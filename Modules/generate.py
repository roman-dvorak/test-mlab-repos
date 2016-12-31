import sys

import subprocess
import pcbnew
from pcbnew import FromMM, wxPoint
from pcbnew import PLOT_FORMAT_GERBER, PLOT_FORMAT_SVG, PLOT_FORMAT_PDF, PLOT_CONTROLLER, EXCELLON_WRITER
from pcbnew import F_Cu, B_Cu, B_SilkS, F_SilkS, B_Mask, F_Mask, Edge_Cuts, B_Paste, F_Paste
filename=sys.argv[1]


plotDir = "../new_CAM_PROFI/"

board = pcbnew.LoadBoard(filename)
pctl = pcbnew.PLOT_CONTROLLER(board)

popt = pctl.GetPlotOptions()

popt.SetOutputDirectory(plotDir)

popt.SetPlotFrameRef(False) 
popt.SetLineWidth(FromMM(0.35))

popt.SetAutoScale(False)
popt.SetScale(1)
popt.SetMirror(False)
popt.SetUseGerberAttributes(True)
popt.SetUseGerberProtelExtensions(False)
popt.SetExcludeEdgeLayer(False);
popt.SetScale(1)
popt.SetUseAuxOrigin(True)

popt.SetSubtractMaskFromSilk(False)



plot_plan = [
    ( "F_Cu", F_Cu, "Top layer" ),
    ( "B_Cu", B_Cu, "Bottom layer" ),
    ( "F_SilkS", F_SilkS, "Silk top" ),
    ( "B_Mask", B_Mask, "Mask bottom" ),
    ( "F_Mask", F_Mask, "Mask top" ),
    ( "Edge_Cuts", Edge_Cuts, "Edges" ),
]


for layer_info in plot_plan:
    pctl.SetLayer(layer_info[1])
    pctl.OpenPlotfile(layer_info[0], PLOT_FORMAT_GERBER, layer_info[2])
    pctl.PlotLayer()

    
    pctl.SetLayer(layer_info[1])
    pctl.OpenPlotfile(layer_info[0], PLOT_FORMAT_SVG, layer_info[2])
    pctl.PlotLayer()
    


drlwriter = EXCELLON_WRITER( board )
drlwriter.SetMapFileFormat( PLOT_FORMAT_SVG )

mirror = False
minimalHeader = False
offset = wxPoint(0,0)

mergeNPTH = False
drlwriter.SetOptions( mirror, minimalHeader, offset, mergeNPTH)

metricFmt = True
drlwriter.SetFormat( metricFmt )

genDrl = True
genMap = True
drlwriter.CreateDrillandMapFilesSet( pctl.GetPlotDirName(), genDrl, genMap );



popt = pctl.GetPlotOptions()

popt.SetOutputDirectory("../DOC/new_src/")

popt.SetPlotFrameRef(False)
popt.SetLineWidth(FromMM(0.35))

popt.SetAutoScale(False)
popt.SetScale(1)
popt.SetMirror(False)
popt.SetUseGerberAttributes(True)
popt.SetExcludeEdgeLayer(False);
popt.SetScale(1)
popt.SetUseAuxOrigin(True)

popt.SetSubtractMaskFromSilk(False)


pctl.OpenPlotfile("MLABa", PLOT_FORMAT_SVG, "MLAB A")
pctl.SetLayer(F_SilkS)
pctl.PlotLayer()
pctl.SetLayer(F_Mask)
pctl.PlotLayer()
#subprocess.Popen(["inkscape", "--verb=FitCanvasToDrawing", "--verb=FileSave", pctl.GetPlotFileName()])


popt.SetMirror(True)
pctl.OpenPlotfile("MLABb", PLOT_FORMAT_SVG, "MLAB A")
pctl.SetLayer(B_SilkS)
pctl.PlotLayer()
#subprocess.Popen(["inkscape", "--verb=FitCanvasToDrawing", "--verb=FileSave", pctl.GetPlotFileName()])



pctl.ClosePlot()
