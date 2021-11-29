[38;5;252m/*[39m
[38;5;252m [39m[38;5;252m*[39m[38;5;252m [39m[38;5;252mCustomzing[39m[38;5;252m [39m[38;5;252mthe[39m[38;5;252m [39m[38;5;252mCharts[39m[38;5;252m [39m[38;5;252musing[39m[38;5;252m [39m[38;5;252mVBA[39m
[38;5;252m [39m[38;5;252m*[39m[38;5;252m [39m
[38;5;252m [39m[38;5;252m*[39m[38;5;252m [39m[38;5;252mYou[39m[38;5;252m [39m[38;5;252mcan[39m[38;5;214m't use cht.Axes(xlCategory).MinimumScale = 5 and MaximumScale.[39m
[38;5;214m * Because Pivot chart do not assist Scatterchart.[39m
[38;5;214m * Only in scatter chart, you can set xlCategory Scale.[39m
[38;5;214m */[39m

[38;5;214mSub chart11()[39m
[38;5;214m    Dim sh As Shape[39m
[38;5;214m    Dim cht As Chart[39m

[38;5;214m    If ActiveSheet.PivotTables.Count = 0 Then Exit Sub[39m

[38;5;214m    Set ptable = ActiveSheet.PivotTables(1)[39m
[38;5;214m    Set ptr = ptable.TableRange1[39m
[38;5;214m    Set sh = ActiveSheet.Shapes.AddChart[39m
[38;5;214m    sh.Select[39m
[38;5;214m    Set cht = ActiveChart[39m
[38;5;214m    With cht[39m
[38;5;214m        .SetSourceData ptr[39m
[38;5;214m        .ChartType = xlColumnStacked[39m
[38;5;214m    End With[39m

[38;5;214m    cht.SeriesCollection(1).Format.Fill.ForeColor.RGB = RGB(255, 0, 0) '[39m[38;5;252m<[39m[38;5;252m~~[39m[38;5;252m [39m[38;5;252mRed[39m
[38;5;252m    [39m[38;5;252mcht.SeriesCollection[39m[38;5;252m([39m[38;5;67m2[39m[38;5;252m)[39m[38;5;252m.Format.Fill.ForeColor.RGB[39m[38;5;252m [39m[38;5;252m=[39m[38;5;252m [39m[38;5;252mRGB[39m[38;5;252m([39m[38;5;67m0[39m[38;5;252m,[39m[38;5;252m [39m[38;5;67m255[39m[38;5;252m,[39m[38;5;252m [39m[38;5;67m0[39m[38;5;252m)[39m[38;5;252m [39m[38;5;214m'<~~ green[39m
[38;5;214m    '[39m[38;5;252mcht.Axes[39m[38;5;252m([39m[38;5;252mxlCategory[39m[38;5;252m)[39m[38;5;252m.MinimumScale[39m[38;5;252m [39m[38;5;252m=[39m[38;5;252m [39m[38;5;67m5[39m
[38;5;252m    [39m[38;5;124;48;5;188m'[39;49m[38;5;252mcht.Axes[39m[38;5;252m([39m[38;5;252mxlCategory[39m[38;5;252m)[39m[38;5;252m.MaximumScale[39m[38;5;252m [39m[38;5;252m=[39m[38;5;252m [39m[38;5;67m40[39m
[38;5;252m    [39m[38;5;252mcht.HasTitle[39m[38;5;252m [39m[38;5;252m=[39m[38;5;252m [39m[38;5;252mTrue[39m
[38;5;252m    [39m[38;5;252mcht.ChartTitle.Text[39m[38;5;252m [39m[38;5;252m=[39m[38;5;252m [39m[38;5;214m"Default Chart"[39m
[38;5;252mEnd[39m[38;5;252m [39m[38;5;252mSub[39m

[38;5;252m/*[39m[38;5;252m [39m[38;5;252m[[39m[38;5;252mDy.Lee[39m[38;5;252m][39m[38;5;252m [39m[38;5;252m[[39m[38;5;252mso/q/45237292[39m[38;5;252m][39m[38;5;252m [39m[38;5;252m[[39m[38;5;252mcc[39m[38;5;252m [39m[38;5;252mby-sa[39m[38;5;252m [39m[38;5;67m3[39m[38;5;252m.0[39m[38;5;252m][39m[38;5;252m [39m[38;5;252m*/[39m
