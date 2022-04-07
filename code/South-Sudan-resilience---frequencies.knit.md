---
title: "South Sudan resilience baseline"
subtitle: "Survey frequencies"
author: "Dan Killian"
toc: true
toc-depth: 3
number-sections: true
format:
  html:
    code-fold: true
editor: visual
---



# Household roster

The following frequencies describe the 41,824 household members enumerated in the 7,872 household interviews.

## 302 Sex of household member

::: {.cell hash='South-Sudan-resilience---frequencies_cache/html/unnamed-chunk-2_41d83aaed79f3b937fee3fd88c874238'}

```{.r .cell-code}
frq(hh$sex) %>%
  data.frame() %>%
  select(3:5) %>%
  gt() 
```

::: {.cell-output-display}
```{=html}
<div id="xtgvptpkgz" style="overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#xtgvptpkgz .gt_table {
  display: table;
  border-collapse: collapse;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#xtgvptpkgz .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#xtgvptpkgz .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#xtgvptpkgz .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#xtgvptpkgz .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#xtgvptpkgz .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#xtgvptpkgz .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#xtgvptpkgz .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#xtgvptpkgz .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#xtgvptpkgz .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#xtgvptpkgz .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#xtgvptpkgz .gt_group_heading {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
}

#xtgvptpkgz .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#xtgvptpkgz .gt_from_md > :first-child {
  margin-top: 0;
}

#xtgvptpkgz .gt_from_md > :last-child {
  margin-bottom: 0;
}

#xtgvptpkgz .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#xtgvptpkgz .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
}

#xtgvptpkgz .gt_stub_row_group {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
  vertical-align: top;
}

#xtgvptpkgz .gt_row_group_first td {
  border-top-width: 2px;
}

#xtgvptpkgz .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#xtgvptpkgz .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #D3D3D3;
}

#xtgvptpkgz .gt_first_summary_row.thick {
  border-top-width: 2px;
}

#xtgvptpkgz .gt_last_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#xtgvptpkgz .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#xtgvptpkgz .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#xtgvptpkgz .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#xtgvptpkgz .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#xtgvptpkgz .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#xtgvptpkgz .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding-left: 4px;
  padding-right: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#xtgvptpkgz .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#xtgvptpkgz .gt_sourcenote {
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#xtgvptpkgz .gt_left {
  text-align: left;
}

#xtgvptpkgz .gt_center {
  text-align: center;
}

#xtgvptpkgz .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#xtgvptpkgz .gt_font_normal {
  font-weight: normal;
}

#xtgvptpkgz .gt_font_bold {
  font-weight: bold;
}

#xtgvptpkgz .gt_font_italic {
  font-style: italic;
}

#xtgvptpkgz .gt_super {
  font-size: 65%;
}

#xtgvptpkgz .gt_footnote_marks {
  font-style: italic;
  font-weight: normal;
  font-size: 75%;
  vertical-align: 0.4em;
}

#xtgvptpkgz .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}

#xtgvptpkgz .gt_slash_mark {
  font-size: 0.7em;
  line-height: 0.7em;
  vertical-align: 0.15em;
}

#xtgvptpkgz .gt_fraction_numerator {
  font-size: 0.6em;
  line-height: 0.6em;
  vertical-align: 0.45em;
}

#xtgvptpkgz .gt_fraction_denominator {
  font-size: 0.6em;
  line-height: 0.6em;
  vertical-align: -0.05em;
}
</style>
<table class="gt_table">
  
  <thead class="gt_col_headings">
    <tr>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">label</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1">frq</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1">raw.prc</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><td class="gt_row gt_left">Male</td>
<td class="gt_row gt_right">20915</td>
<td class="gt_row gt_right">50.01</td></tr>
    <tr><td class="gt_row gt_left">Female</td>
<td class="gt_row gt_right">20881</td>
<td class="gt_row gt_right">49.93</td></tr>
    <tr><td class="gt_row gt_left">NA</td>
<td class="gt_row gt_right">28</td>
<td class="gt_row gt_right">0.07</td></tr>
  </tbody>
  
  
</table>
</div>
```
:::
:::

## 303 Relationship to head of household

::: {.cell hash='South-Sudan-resilience---frequencies_cache/html/unnamed-chunk-4_2949a9e7e7a86b47108e6745e2660eb4'}

```{.r .cell-code}
frq(hh$q_303) %>%
  data.frame() %>%
  select(3:5) %>%
  gt()
```

::: {.cell-output-display}
```{=html}
<div id="zbrhqtljdz" style="overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#zbrhqtljdz .gt_table {
  display: table;
  border-collapse: collapse;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#zbrhqtljdz .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#zbrhqtljdz .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#zbrhqtljdz .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#zbrhqtljdz .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#zbrhqtljdz .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#zbrhqtljdz .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#zbrhqtljdz .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#zbrhqtljdz .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#zbrhqtljdz .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#zbrhqtljdz .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#zbrhqtljdz .gt_group_heading {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
}

#zbrhqtljdz .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#zbrhqtljdz .gt_from_md > :first-child {
  margin-top: 0;
}

#zbrhqtljdz .gt_from_md > :last-child {
  margin-bottom: 0;
}

#zbrhqtljdz .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#zbrhqtljdz .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
}

#zbrhqtljdz .gt_stub_row_group {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
  vertical-align: top;
}

#zbrhqtljdz .gt_row_group_first td {
  border-top-width: 2px;
}

#zbrhqtljdz .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#zbrhqtljdz .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #D3D3D3;
}

#zbrhqtljdz .gt_first_summary_row.thick {
  border-top-width: 2px;
}

#zbrhqtljdz .gt_last_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#zbrhqtljdz .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#zbrhqtljdz .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#zbrhqtljdz .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#zbrhqtljdz .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#zbrhqtljdz .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#zbrhqtljdz .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding-left: 4px;
  padding-right: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#zbrhqtljdz .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#zbrhqtljdz .gt_sourcenote {
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#zbrhqtljdz .gt_left {
  text-align: left;
}

#zbrhqtljdz .gt_center {
  text-align: center;
}

#zbrhqtljdz .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#zbrhqtljdz .gt_font_normal {
  font-weight: normal;
}

#zbrhqtljdz .gt_font_bold {
  font-weight: bold;
}

#zbrhqtljdz .gt_font_italic {
  font-style: italic;
}

#zbrhqtljdz .gt_super {
  font-size: 65%;
}

#zbrhqtljdz .gt_footnote_marks {
  font-style: italic;
  font-weight: normal;
  font-size: 75%;
  vertical-align: 0.4em;
}

#zbrhqtljdz .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}

#zbrhqtljdz .gt_slash_mark {
  font-size: 0.7em;
  line-height: 0.7em;
  vertical-align: 0.15em;
}

#zbrhqtljdz .gt_fraction_numerator {
  font-size: 0.6em;
  line-height: 0.6em;
  vertical-align: 0.45em;
}

#zbrhqtljdz .gt_fraction_denominator {
  font-size: 0.6em;
  line-height: 0.6em;
  vertical-align: -0.05em;
}
</style>
<table class="gt_table">
  
  <thead class="gt_col_headings">
    <tr>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">label</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1">frq</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1">raw.prc</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><td class="gt_row gt_left">Head</td>
<td class="gt_row gt_right">3844</td>
<td class="gt_row gt_right">9.19</td></tr>
    <tr><td class="gt_row gt_left">Wife/Husband</td>
<td class="gt_row gt_right">5905</td>
<td class="gt_row gt_right">14.12</td></tr>
    <tr><td class="gt_row gt_left">Son/Daughter</td>
<td class="gt_row gt_right">23738</td>
<td class="gt_row gt_right">56.76</td></tr>
    <tr><td class="gt_row gt_left">Son-in-law/Daughter-in-law</td>
<td class="gt_row gt_right">1993</td>
<td class="gt_row gt_right">4.77</td></tr>
    <tr><td class="gt_row gt_left">Grandchild</td>
<td class="gt_row gt_right">1475</td>
<td class="gt_row gt_right">3.53</td></tr>
    <tr><td class="gt_row gt_left">Parent</td>
<td class="gt_row gt_right">460</td>
<td class="gt_row gt_right">1.10</td></tr>
    <tr><td class="gt_row gt_left">Parent-in-law</td>
<td class="gt_row gt_right">547</td>
<td class="gt_row gt_right">1.31</td></tr>
    <tr><td class="gt_row gt_left">Brother/Sister</td>
<td class="gt_row gt_right">1659</td>
<td class="gt_row gt_right">3.97</td></tr>
    <tr><td class="gt_row gt_left">Co-wife</td>
<td class="gt_row gt_right">373</td>
<td class="gt_row gt_right">0.89</td></tr>
    <tr><td class="gt_row gt_left">Niece/Nephew</td>
<td class="gt_row gt_right">980</td>
<td class="gt_row gt_right">2.34</td></tr>
    <tr><td class="gt_row gt_left">Other relative</td>
<td class="gt_row gt_right">718</td>
<td class="gt_row gt_right">1.72</td></tr>
    <tr><td class="gt_row gt_left">Adopted/Foster/Step Child</td>
<td class="gt_row gt_right">47</td>
<td class="gt_row gt_right">0.11</td></tr>
    <tr><td class="gt_row gt_left">Not related</td>
<td class="gt_row gt_right">29</td>
<td class="gt_row gt_right">0.07</td></tr>
    <tr><td class="gt_row gt_left">Don't know</td>
<td class="gt_row gt_right">0</td>
<td class="gt_row gt_right">0.00</td></tr>
    <tr><td class="gt_row gt_left">NA</td>
<td class="gt_row gt_right">56</td>
<td class="gt_row gt_right">0.13</td></tr>
  </tbody>
  
  
</table>
</div>
```
:::
:::

## 304 Age

::: {.cell hash='South-Sudan-resilience---frequencies_cache/html/unnamed-chunk-6_19898d431a8fba98ccd75a6b71c93bbe'}

```{.r .cell-code}
describe(hh$age)
```

::: {.cell-output-display}
preserve2301afdf4bca7050
:::
:::

::: {.cell hash='South-Sudan-resilience---frequencies_cache/html/unnamed-chunk-8_cf9331c470ebd773b7d5c6744ce7e8e9'}

```{.r .cell-code}
ggplot(hh, aes(age)) + 
  geom_density(color="blue", fill="lavender", alpha=.8)
```

::: {.cell-output-display}
![](South-Sudan-resilience---frequencies_files/figure-html/unnamed-chunk-8-1.png){width=576}
:::
:::

## 305 Can read or write

::: {.cell hash='South-Sudan-resilience---frequencies_cache/html/unnamed-chunk-10_c295bc0b1e243ab0c512395dd2ccd8e2'}

```{.r .cell-code}
frq(hh$q_305) %>%
  data.frame() %>%
  select(3:5) %>%
  gt()
```

::: {.cell-output-display}
```{=html}
<div id="cqdmamaomz" style="overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#cqdmamaomz .gt_table {
  display: table;
  border-collapse: collapse;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#cqdmamaomz .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#cqdmamaomz .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#cqdmamaomz .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#cqdmamaomz .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#cqdmamaomz .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#cqdmamaomz .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#cqdmamaomz .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#cqdmamaomz .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#cqdmamaomz .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#cqdmamaomz .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#cqdmamaomz .gt_group_heading {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
}

#cqdmamaomz .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#cqdmamaomz .gt_from_md > :first-child {
  margin-top: 0;
}

#cqdmamaomz .gt_from_md > :last-child {
  margin-bottom: 0;
}

#cqdmamaomz .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#cqdmamaomz .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
}

#cqdmamaomz .gt_stub_row_group {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
  vertical-align: top;
}

#cqdmamaomz .gt_row_group_first td {
  border-top-width: 2px;
}

#cqdmamaomz .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#cqdmamaomz .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #D3D3D3;
}

#cqdmamaomz .gt_first_summary_row.thick {
  border-top-width: 2px;
}

#cqdmamaomz .gt_last_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#cqdmamaomz .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#cqdmamaomz .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#cqdmamaomz .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#cqdmamaomz .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#cqdmamaomz .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#cqdmamaomz .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding-left: 4px;
  padding-right: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#cqdmamaomz .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#cqdmamaomz .gt_sourcenote {
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#cqdmamaomz .gt_left {
  text-align: left;
}

#cqdmamaomz .gt_center {
  text-align: center;
}

#cqdmamaomz .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#cqdmamaomz .gt_font_normal {
  font-weight: normal;
}

#cqdmamaomz .gt_font_bold {
  font-weight: bold;
}

#cqdmamaomz .gt_font_italic {
  font-style: italic;
}

#cqdmamaomz .gt_super {
  font-size: 65%;
}

#cqdmamaomz .gt_footnote_marks {
  font-style: italic;
  font-weight: normal;
  font-size: 75%;
  vertical-align: 0.4em;
}

#cqdmamaomz .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}

#cqdmamaomz .gt_slash_mark {
  font-size: 0.7em;
  line-height: 0.7em;
  vertical-align: 0.15em;
}

#cqdmamaomz .gt_fraction_numerator {
  font-size: 0.6em;
  line-height: 0.6em;
  vertical-align: 0.45em;
}

#cqdmamaomz .gt_fraction_denominator {
  font-size: 0.6em;
  line-height: 0.6em;
  vertical-align: -0.05em;
}
</style>
<table class="gt_table">
  
  <thead class="gt_col_headings">
    <tr>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">label</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1">frq</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1">raw.prc</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><td class="gt_row gt_left">No</td>
<td class="gt_row gt_right">28051</td>
<td class="gt_row gt_right">67.07</td></tr>
    <tr><td class="gt_row gt_left">Yes</td>
<td class="gt_row gt_right">13701</td>
<td class="gt_row gt_right">32.76</td></tr>
    <tr><td class="gt_row gt_left">Don't know</td>
<td class="gt_row gt_right">0</td>
<td class="gt_row gt_right">0.00</td></tr>
    <tr><td class="gt_row gt_left">Refused</td>
<td class="gt_row gt_right">0</td>
<td class="gt_row gt_right">0.00</td></tr>
    <tr><td class="gt_row gt_left">NA</td>
<td class="gt_row gt_right">72</td>
<td class="gt_row gt_right">0.17</td></tr>
  </tbody>
  
  
</table>
</div>
```
:::
:::

## 306 Ever attended school

::: {.cell hash='South-Sudan-resilience---frequencies_cache/html/unnamed-chunk-12_432bc40908025199ed091d8c2b1d151b'}

```{.r .cell-code}
frq(hh$q_306) %>%
  data.frame() %>%
  select(3:5) %>%
  gt()
```

::: {.cell-output-display}
```{=html}
<div id="weawuxebtf" style="overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#weawuxebtf .gt_table {
  display: table;
  border-collapse: collapse;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#weawuxebtf .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#weawuxebtf .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#weawuxebtf .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#weawuxebtf .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#weawuxebtf .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#weawuxebtf .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#weawuxebtf .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#weawuxebtf .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#weawuxebtf .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#weawuxebtf .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#weawuxebtf .gt_group_heading {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
}

#weawuxebtf .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#weawuxebtf .gt_from_md > :first-child {
  margin-top: 0;
}

#weawuxebtf .gt_from_md > :last-child {
  margin-bottom: 0;
}

#weawuxebtf .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#weawuxebtf .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
}

#weawuxebtf .gt_stub_row_group {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
  vertical-align: top;
}

#weawuxebtf .gt_row_group_first td {
  border-top-width: 2px;
}

#weawuxebtf .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#weawuxebtf .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #D3D3D3;
}

#weawuxebtf .gt_first_summary_row.thick {
  border-top-width: 2px;
}

#weawuxebtf .gt_last_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#weawuxebtf .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#weawuxebtf .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#weawuxebtf .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#weawuxebtf .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#weawuxebtf .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#weawuxebtf .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding-left: 4px;
  padding-right: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#weawuxebtf .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#weawuxebtf .gt_sourcenote {
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#weawuxebtf .gt_left {
  text-align: left;
}

#weawuxebtf .gt_center {
  text-align: center;
}

#weawuxebtf .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#weawuxebtf .gt_font_normal {
  font-weight: normal;
}

#weawuxebtf .gt_font_bold {
  font-weight: bold;
}

#weawuxebtf .gt_font_italic {
  font-style: italic;
}

#weawuxebtf .gt_super {
  font-size: 65%;
}

#weawuxebtf .gt_footnote_marks {
  font-style: italic;
  font-weight: normal;
  font-size: 75%;
  vertical-align: 0.4em;
}

#weawuxebtf .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}

#weawuxebtf .gt_slash_mark {
  font-size: 0.7em;
  line-height: 0.7em;
  vertical-align: 0.15em;
}

#weawuxebtf .gt_fraction_numerator {
  font-size: 0.6em;
  line-height: 0.6em;
  vertical-align: 0.45em;
}

#weawuxebtf .gt_fraction_denominator {
  font-size: 0.6em;
  line-height: 0.6em;
  vertical-align: -0.05em;
}
</style>
<table class="gt_table">
  
  <thead class="gt_col_headings">
    <tr>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">label</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1">frq</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1">raw.prc</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><td class="gt_row gt_left">No</td>
<td class="gt_row gt_right">27557</td>
<td class="gt_row gt_right">65.89</td></tr>
    <tr><td class="gt_row gt_left">Yes</td>
<td class="gt_row gt_right">14169</td>
<td class="gt_row gt_right">33.88</td></tr>
    <tr><td class="gt_row gt_left">Don't know</td>
<td class="gt_row gt_right">0</td>
<td class="gt_row gt_right">0.00</td></tr>
    <tr><td class="gt_row gt_left">Refused</td>
<td class="gt_row gt_right">0</td>
<td class="gt_row gt_right">0.00</td></tr>
    <tr><td class="gt_row gt_left">NA</td>
<td class="gt_row gt_right">98</td>
<td class="gt_row gt_right">0.23</td></tr>
  </tbody>
  
  
</table>
</div>
```
:::
:::

## 307 Reason never attended school

::: {.cell hash='South-Sudan-resilience---frequencies_cache/html/unnamed-chunk-14_8189147e0b2e400f94fc42e1a543f72c'}

```{.r .cell-code}
frq(hh$q_307) %>%
  data.frame() %>%
  select(3:5) %>%
  gt()
```

::: {.cell-output-display}
```{=html}
<div id="rhvjwvdvpp" style="overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#rhvjwvdvpp .gt_table {
  display: table;
  border-collapse: collapse;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#rhvjwvdvpp .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#rhvjwvdvpp .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#rhvjwvdvpp .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#rhvjwvdvpp .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#rhvjwvdvpp .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#rhvjwvdvpp .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#rhvjwvdvpp .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#rhvjwvdvpp .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#rhvjwvdvpp .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#rhvjwvdvpp .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#rhvjwvdvpp .gt_group_heading {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
}

#rhvjwvdvpp .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#rhvjwvdvpp .gt_from_md > :first-child {
  margin-top: 0;
}

#rhvjwvdvpp .gt_from_md > :last-child {
  margin-bottom: 0;
}

#rhvjwvdvpp .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#rhvjwvdvpp .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
}

#rhvjwvdvpp .gt_stub_row_group {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
  vertical-align: top;
}

#rhvjwvdvpp .gt_row_group_first td {
  border-top-width: 2px;
}

#rhvjwvdvpp .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#rhvjwvdvpp .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #D3D3D3;
}

#rhvjwvdvpp .gt_first_summary_row.thick {
  border-top-width: 2px;
}

#rhvjwvdvpp .gt_last_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#rhvjwvdvpp .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#rhvjwvdvpp .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#rhvjwvdvpp .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#rhvjwvdvpp .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#rhvjwvdvpp .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#rhvjwvdvpp .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding-left: 4px;
  padding-right: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#rhvjwvdvpp .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#rhvjwvdvpp .gt_sourcenote {
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#rhvjwvdvpp .gt_left {
  text-align: left;
}

#rhvjwvdvpp .gt_center {
  text-align: center;
}

#rhvjwvdvpp .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#rhvjwvdvpp .gt_font_normal {
  font-weight: normal;
}

#rhvjwvdvpp .gt_font_bold {
  font-weight: bold;
}

#rhvjwvdvpp .gt_font_italic {
  font-style: italic;
}

#rhvjwvdvpp .gt_super {
  font-size: 65%;
}

#rhvjwvdvpp .gt_footnote_marks {
  font-style: italic;
  font-weight: normal;
  font-size: 75%;
  vertical-align: 0.4em;
}

#rhvjwvdvpp .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}

#rhvjwvdvpp .gt_slash_mark {
  font-size: 0.7em;
  line-height: 0.7em;
  vertical-align: 0.15em;
}

#rhvjwvdvpp .gt_fraction_numerator {
  font-size: 0.6em;
  line-height: 0.6em;
  vertical-align: 0.45em;
}

#rhvjwvdvpp .gt_fraction_denominator {
  font-size: 0.6em;
  line-height: 0.6em;
  vertical-align: -0.05em;
}
</style>
<table class="gt_table">
  
  <thead class="gt_col_headings">
    <tr>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">label</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1">frq</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1">raw.prc</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><td class="gt_row gt_left">No money</td>
<td class="gt_row gt_right">6497</td>
<td class="gt_row gt_right">15.53</td></tr>
    <tr><td class="gt_row gt_left">Support family</td>
<td class="gt_row gt_right">3043</td>
<td class="gt_row gt_right">7.28</td></tr>
    <tr><td class="gt_row gt_left">Disability/illness</td>
<td class="gt_row gt_right">605</td>
<td class="gt_row gt_right">1.45</td></tr>
    <tr><td class="gt_row gt_left">School too far</td>
<td class="gt_row gt_right">4145</td>
<td class="gt_row gt_right">9.91</td></tr>
    <tr><td class="gt_row gt_left">Cultural barrier</td>
<td class="gt_row gt_right">3445</td>
<td class="gt_row gt_right">8.24</td></tr>
    <tr><td class="gt_row gt_left">Too young</td>
<td class="gt_row gt_right">6639</td>
<td class="gt_row gt_right">15.87</td></tr>
    <tr><td class="gt_row gt_left">See no value in education</td>
<td class="gt_row gt_right">1239</td>
<td class="gt_row gt_right">2.96</td></tr>
    <tr><td class="gt_row gt_left">Don't know</td>
<td class="gt_row gt_right">1801</td>
<td class="gt_row gt_right">4.31</td></tr>
    <tr><td class="gt_row gt_left">NA</td>
<td class="gt_row gt_right">14410</td>
<td class="gt_row gt_right">34.45</td></tr>
  </tbody>
  
  
</table>
</div>
```
:::
:::

## 308 Highest education attained

::: {.cell hash='South-Sudan-resilience---frequencies_cache/html/unnamed-chunk-16_8ea964f9602fe266d58353eb8687e6cd'}

```{.r .cell-code}
frq(hh$q_308) %>%
  data.frame() %>%
  select(3:5) %>%
  gt()
```

::: {.cell-output-display}
```{=html}
<div id="rjbhuggpcn" style="overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#rjbhuggpcn .gt_table {
  display: table;
  border-collapse: collapse;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#rjbhuggpcn .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#rjbhuggpcn .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#rjbhuggpcn .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#rjbhuggpcn .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#rjbhuggpcn .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#rjbhuggpcn .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#rjbhuggpcn .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#rjbhuggpcn .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#rjbhuggpcn .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#rjbhuggpcn .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#rjbhuggpcn .gt_group_heading {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
}

#rjbhuggpcn .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#rjbhuggpcn .gt_from_md > :first-child {
  margin-top: 0;
}

#rjbhuggpcn .gt_from_md > :last-child {
  margin-bottom: 0;
}

#rjbhuggpcn .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#rjbhuggpcn .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
}

#rjbhuggpcn .gt_stub_row_group {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
  vertical-align: top;
}

#rjbhuggpcn .gt_row_group_first td {
  border-top-width: 2px;
}

#rjbhuggpcn .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#rjbhuggpcn .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #D3D3D3;
}

#rjbhuggpcn .gt_first_summary_row.thick {
  border-top-width: 2px;
}

#rjbhuggpcn .gt_last_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#rjbhuggpcn .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#rjbhuggpcn .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#rjbhuggpcn .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#rjbhuggpcn .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#rjbhuggpcn .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#rjbhuggpcn .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding-left: 4px;
  padding-right: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#rjbhuggpcn .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#rjbhuggpcn .gt_sourcenote {
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#rjbhuggpcn .gt_left {
  text-align: left;
}

#rjbhuggpcn .gt_center {
  text-align: center;
}

#rjbhuggpcn .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#rjbhuggpcn .gt_font_normal {
  font-weight: normal;
}

#rjbhuggpcn .gt_font_bold {
  font-weight: bold;
}

#rjbhuggpcn .gt_font_italic {
  font-style: italic;
}

#rjbhuggpcn .gt_super {
  font-size: 65%;
}

#rjbhuggpcn .gt_footnote_marks {
  font-style: italic;
  font-weight: normal;
  font-size: 75%;
  vertical-align: 0.4em;
}

#rjbhuggpcn .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}

#rjbhuggpcn .gt_slash_mark {
  font-size: 0.7em;
  line-height: 0.7em;
  vertical-align: 0.15em;
}

#rjbhuggpcn .gt_fraction_numerator {
  font-size: 0.6em;
  line-height: 0.6em;
  vertical-align: 0.45em;
}

#rjbhuggpcn .gt_fraction_denominator {
  font-size: 0.6em;
  line-height: 0.6em;
  vertical-align: -0.05em;
}
</style>
<table class="gt_table">
  
  <thead class="gt_col_headings">
    <tr>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">label</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1">frq</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1">raw.prc</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><td class="gt_row gt_left">None</td>
<td class="gt_row gt_right">20670</td>
<td class="gt_row gt_right">49.42</td></tr>
    <tr><td class="gt_row gt_left">Primary</td>
<td class="gt_row gt_right">10673</td>
<td class="gt_row gt_right">25.52</td></tr>
    <tr><td class="gt_row gt_left">Secondary</td>
<td class="gt_row gt_right">2183</td>
<td class="gt_row gt_right">5.22</td></tr>
    <tr><td class="gt_row gt_left">Certificate</td>
<td class="gt_row gt_right">491</td>
<td class="gt_row gt_right">1.17</td></tr>
    <tr><td class="gt_row gt_left">Diploma</td>
<td class="gt_row gt_right">230</td>
<td class="gt_row gt_right">0.55</td></tr>
    <tr><td class="gt_row gt_left">First degree</td>
<td class="gt_row gt_right">93</td>
<td class="gt_row gt_right">0.22</td></tr>
    <tr><td class="gt_row gt_left">Post-graduate</td>
<td class="gt_row gt_right">32</td>
<td class="gt_row gt_right">0.08</td></tr>
    <tr><td class="gt_row gt_left">Khalwa</td>
<td class="gt_row gt_right">19</td>
<td class="gt_row gt_right">0.05</td></tr>
    <tr><td class="gt_row gt_left">Other</td>
<td class="gt_row gt_right">144</td>
<td class="gt_row gt_right">0.34</td></tr>
    <tr><td class="gt_row gt_left">NA</td>
<td class="gt_row gt_right">7289</td>
<td class="gt_row gt_right">17.43</td></tr>
  </tbody>
  
  
</table>
</div>
```
:::
:::

## 309 Marital status

::: {.cell hash='South-Sudan-resilience---frequencies_cache/html/unnamed-chunk-18_ca5ba95d999ccb9a015e092d20c56e00'}

```{.r .cell-code}
frq(hh$q_309) %>%
  data.frame() %>%
  select(3:5) %>%
  gt()
```

::: {.cell-output-display}
```{=html}
<div id="okbbvzqmdj" style="overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#okbbvzqmdj .gt_table {
  display: table;
  border-collapse: collapse;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#okbbvzqmdj .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#okbbvzqmdj .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#okbbvzqmdj .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#okbbvzqmdj .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#okbbvzqmdj .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#okbbvzqmdj .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#okbbvzqmdj .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#okbbvzqmdj .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#okbbvzqmdj .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#okbbvzqmdj .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#okbbvzqmdj .gt_group_heading {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
}

#okbbvzqmdj .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#okbbvzqmdj .gt_from_md > :first-child {
  margin-top: 0;
}

#okbbvzqmdj .gt_from_md > :last-child {
  margin-bottom: 0;
}

#okbbvzqmdj .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#okbbvzqmdj .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
}

#okbbvzqmdj .gt_stub_row_group {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
  vertical-align: top;
}

#okbbvzqmdj .gt_row_group_first td {
  border-top-width: 2px;
}

#okbbvzqmdj .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#okbbvzqmdj .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #D3D3D3;
}

#okbbvzqmdj .gt_first_summary_row.thick {
  border-top-width: 2px;
}

#okbbvzqmdj .gt_last_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#okbbvzqmdj .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#okbbvzqmdj .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#okbbvzqmdj .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#okbbvzqmdj .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#okbbvzqmdj .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#okbbvzqmdj .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding-left: 4px;
  padding-right: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#okbbvzqmdj .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#okbbvzqmdj .gt_sourcenote {
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#okbbvzqmdj .gt_left {
  text-align: left;
}

#okbbvzqmdj .gt_center {
  text-align: center;
}

#okbbvzqmdj .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#okbbvzqmdj .gt_font_normal {
  font-weight: normal;
}

#okbbvzqmdj .gt_font_bold {
  font-weight: bold;
}

#okbbvzqmdj .gt_font_italic {
  font-style: italic;
}

#okbbvzqmdj .gt_super {
  font-size: 65%;
}

#okbbvzqmdj .gt_footnote_marks {
  font-style: italic;
  font-weight: normal;
  font-size: 75%;
  vertical-align: 0.4em;
}

#okbbvzqmdj .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}

#okbbvzqmdj .gt_slash_mark {
  font-size: 0.7em;
  line-height: 0.7em;
  vertical-align: 0.15em;
}

#okbbvzqmdj .gt_fraction_numerator {
  font-size: 0.6em;
  line-height: 0.6em;
  vertical-align: 0.45em;
}

#okbbvzqmdj .gt_fraction_denominator {
  font-size: 0.6em;
  line-height: 0.6em;
  vertical-align: -0.05em;
}
</style>
<table class="gt_table">
  
  <thead class="gt_col_headings">
    <tr>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">label</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1">frq</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1">raw.prc</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><td class="gt_row gt_left">Never married</td>
<td class="gt_row gt_right">10362</td>
<td class="gt_row gt_right">24.78</td></tr>
    <tr><td class="gt_row gt_left">Currently married</td>
<td class="gt_row gt_right">11616</td>
<td class="gt_row gt_right">27.77</td></tr>
    <tr><td class="gt_row gt_left">Cohabitating</td>
<td class="gt_row gt_right">309</td>
<td class="gt_row gt_right">0.74</td></tr>
    <tr><td class="gt_row gt_left">Widow</td>
<td class="gt_row gt_right">692</td>
<td class="gt_row gt_right">1.65</td></tr>
    <tr><td class="gt_row gt_left">Separated</td>
<td class="gt_row gt_right">266</td>
<td class="gt_row gt_right">0.64</td></tr>
    <tr><td class="gt_row gt_left">Divorced</td>
<td class="gt_row gt_right">117</td>
<td class="gt_row gt_right">0.28</td></tr>
    <tr><td class="gt_row gt_left">Other</td>
<td class="gt_row gt_right">1119</td>
<td class="gt_row gt_right">2.68</td></tr>
    <tr><td class="gt_row gt_left">NA</td>
<td class="gt_row gt_right">17343</td>
<td class="gt_row gt_right">41.47</td></tr>
  </tbody>
  
  
</table>
</div>
```
:::
:::

## 314 Economic activity of household member

::: {.cell hash='South-Sudan-resilience---frequencies_cache/html/unnamed-chunk-20_1130895a65e51ead6ea75e94f6bdaa14'}

```{.r .cell-code}
frq(hh$q_314) %>%
  data.frame() %>%
  select(3:5) %>%
  gt()
```

::: {.cell-output-display}
```{=html}
<div id="alwnvmglwz" style="overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#alwnvmglwz .gt_table {
  display: table;
  border-collapse: collapse;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#alwnvmglwz .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#alwnvmglwz .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#alwnvmglwz .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#alwnvmglwz .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#alwnvmglwz .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#alwnvmglwz .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#alwnvmglwz .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#alwnvmglwz .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#alwnvmglwz .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#alwnvmglwz .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#alwnvmglwz .gt_group_heading {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
}

#alwnvmglwz .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#alwnvmglwz .gt_from_md > :first-child {
  margin-top: 0;
}

#alwnvmglwz .gt_from_md > :last-child {
  margin-bottom: 0;
}

#alwnvmglwz .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#alwnvmglwz .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
}

#alwnvmglwz .gt_stub_row_group {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
  vertical-align: top;
}

#alwnvmglwz .gt_row_group_first td {
  border-top-width: 2px;
}

#alwnvmglwz .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#alwnvmglwz .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #D3D3D3;
}

#alwnvmglwz .gt_first_summary_row.thick {
  border-top-width: 2px;
}

#alwnvmglwz .gt_last_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#alwnvmglwz .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#alwnvmglwz .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#alwnvmglwz .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#alwnvmglwz .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#alwnvmglwz .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#alwnvmglwz .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding-left: 4px;
  padding-right: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#alwnvmglwz .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#alwnvmglwz .gt_sourcenote {
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#alwnvmglwz .gt_left {
  text-align: left;
}

#alwnvmglwz .gt_center {
  text-align: center;
}

#alwnvmglwz .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#alwnvmglwz .gt_font_normal {
  font-weight: normal;
}

#alwnvmglwz .gt_font_bold {
  font-weight: bold;
}

#alwnvmglwz .gt_font_italic {
  font-style: italic;
}

#alwnvmglwz .gt_super {
  font-size: 65%;
}

#alwnvmglwz .gt_footnote_marks {
  font-style: italic;
  font-weight: normal;
  font-size: 75%;
  vertical-align: 0.4em;
}

#alwnvmglwz .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}

#alwnvmglwz .gt_slash_mark {
  font-size: 0.7em;
  line-height: 0.7em;
  vertical-align: 0.15em;
}

#alwnvmglwz .gt_fraction_numerator {
  font-size: 0.6em;
  line-height: 0.6em;
  vertical-align: 0.45em;
}

#alwnvmglwz .gt_fraction_denominator {
  font-size: 0.6em;
  line-height: 0.6em;
  vertical-align: -0.05em;
}
</style>
<table class="gt_table">
  
  <thead class="gt_col_headings">
    <tr>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">label</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1">frq</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1">raw.prc</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><td class="gt_row gt_left">Crop farming</td>
<td class="gt_row gt_right">16313</td>
<td class="gt_row gt_right">39.00</td></tr>
    <tr><td class="gt_row gt_left">Defense</td>
<td class="gt_row gt_right">642</td>
<td class="gt_row gt_right">1.54</td></tr>
    <tr><td class="gt_row gt_left">Education</td>
<td class="gt_row gt_right">2843</td>
<td class="gt_row gt_right">6.80</td></tr>
    <tr><td class="gt_row gt_left">Animal husbandry</td>
<td class="gt_row gt_right">2049</td>
<td class="gt_row gt_right">4.90</td></tr>
    <tr><td class="gt_row gt_left">Trade</td>
<td class="gt_row gt_right">997</td>
<td class="gt_row gt_right">2.38</td></tr>
    <tr><td class="gt_row gt_left">Public administration</td>
<td class="gt_row gt_right">341</td>
<td class="gt_row gt_right">0.82</td></tr>
    <tr><td class="gt_row gt_left">Health</td>
<td class="gt_row gt_right">210</td>
<td class="gt_row gt_right">0.50</td></tr>
    <tr><td class="gt_row gt_left">Construction</td>
<td class="gt_row gt_right">149</td>
<td class="gt_row gt_right">0.36</td></tr>
    <tr><td class="gt_row gt_left">Public servant</td>
<td class="gt_row gt_right">367</td>
<td class="gt_row gt_right">0.88</td></tr>
    <tr><td class="gt_row gt_left">Other</td>
<td class="gt_row gt_right">3015</td>
<td class="gt_row gt_right">7.21</td></tr>
    <tr><td class="gt_row gt_left">NA</td>
<td class="gt_row gt_right">14898</td>
<td class="gt_row gt_right">35.62</td></tr>
  </tbody>
  
  
</table>
</div>
```
:::
:::

What proportion of households

::: {.cell hash='South-Sudan-resilience---frequencies_cache/html/unnamed-chunk-22_47b467fd72e4ec9d488b2c3ed3a64f4e'}

:::

## 315 Vaccinated for measles

::: {.cell hash='South-Sudan-resilience---frequencies_cache/html/unnamed-chunk-24_d3b568410694b43ed25d3c6ba6e9ca3a'}

```{.r .cell-code}
frq(hh$q_315) %>%
  data.frame() %>%
  select(3:5) %>%
  gt()
```

::: {.cell-output-display}
```{=html}
<div id="drvbryxkhe" style="overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#drvbryxkhe .gt_table {
  display: table;
  border-collapse: collapse;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#drvbryxkhe .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#drvbryxkhe .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#drvbryxkhe .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#drvbryxkhe .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#drvbryxkhe .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#drvbryxkhe .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#drvbryxkhe .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#drvbryxkhe .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#drvbryxkhe .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#drvbryxkhe .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#drvbryxkhe .gt_group_heading {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
}

#drvbryxkhe .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#drvbryxkhe .gt_from_md > :first-child {
  margin-top: 0;
}

#drvbryxkhe .gt_from_md > :last-child {
  margin-bottom: 0;
}

#drvbryxkhe .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#drvbryxkhe .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
}

#drvbryxkhe .gt_stub_row_group {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
  vertical-align: top;
}

#drvbryxkhe .gt_row_group_first td {
  border-top-width: 2px;
}

#drvbryxkhe .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#drvbryxkhe .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #D3D3D3;
}

#drvbryxkhe .gt_first_summary_row.thick {
  border-top-width: 2px;
}

#drvbryxkhe .gt_last_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#drvbryxkhe .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#drvbryxkhe .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#drvbryxkhe .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#drvbryxkhe .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#drvbryxkhe .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#drvbryxkhe .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding-left: 4px;
  padding-right: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#drvbryxkhe .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#drvbryxkhe .gt_sourcenote {
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#drvbryxkhe .gt_left {
  text-align: left;
}

#drvbryxkhe .gt_center {
  text-align: center;
}

#drvbryxkhe .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#drvbryxkhe .gt_font_normal {
  font-weight: normal;
}

#drvbryxkhe .gt_font_bold {
  font-weight: bold;
}

#drvbryxkhe .gt_font_italic {
  font-style: italic;
}

#drvbryxkhe .gt_super {
  font-size: 65%;
}

#drvbryxkhe .gt_footnote_marks {
  font-style: italic;
  font-weight: normal;
  font-size: 75%;
  vertical-align: 0.4em;
}

#drvbryxkhe .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}

#drvbryxkhe .gt_slash_mark {
  font-size: 0.7em;
  line-height: 0.7em;
  vertical-align: 0.15em;
}

#drvbryxkhe .gt_fraction_numerator {
  font-size: 0.6em;
  line-height: 0.6em;
  vertical-align: 0.45em;
}

#drvbryxkhe .gt_fraction_denominator {
  font-size: 0.6em;
  line-height: 0.6em;
  vertical-align: -0.05em;
}
</style>
<table class="gt_table">
  
  <thead class="gt_col_headings">
    <tr>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">label</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1">frq</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1">raw.prc</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><td class="gt_row gt_left">No</td>
<td class="gt_row gt_right">1357</td>
<td class="gt_row gt_right">3.24</td></tr>
    <tr><td class="gt_row gt_left">Yes</td>
<td class="gt_row gt_right">5595</td>
<td class="gt_row gt_right">13.38</td></tr>
    <tr><td class="gt_row gt_left">Don't know</td>
<td class="gt_row gt_right">55</td>
<td class="gt_row gt_right">0.13</td></tr>
    <tr><td class="gt_row gt_left">Refused</td>
<td class="gt_row gt_right">0</td>
<td class="gt_row gt_right">0.00</td></tr>
    <tr><td class="gt_row gt_left">NA</td>
<td class="gt_row gt_right">34817</td>
<td class="gt_row gt_right">83.25</td></tr>
  </tbody>
  
  
</table>
</div>
```
:::
:::

# Household Income and Consumption

## Overall

::: {.cell hash='South-Sudan-resilience---frequencies_cache/html/unnamed-chunk-26_7d352715a2a516404be235142d7dbadc'}

```{.r .cell-code}
inc_ov_tmp <- svyrdat %>%
  group_by() %>%
  summarize(crop_production=survey_mean(q_401_a_bin),
            cattle_production = survey_mean(q_401_b_bin),
            goat_production = survey_mean(q_401_c_bin),
            sheep_production = survey_mean(q_401_d_bin),
            fishing = survey_mean(q_401_e_bin),
            Agwage_within = survey_mean(q_401_f_bin),
            Agwage_without = survey_mean(q_401_g_bin),
            nonAgwage_within = survey_mean(q_401_h_bin),
            nonAgwage_without = survey_mean(q_401_i_bin),
            salary = survey_mean(q_401_j_bin),
            bush_products = survey_mean(q_401_k_bin),
            honey = survey_mean(q_401_l_bin),
            petty_trade_other = survey_mean(q_401_m_bin),
            petty_trade_own = survey_mean(q_401_n_bin),
            ownbiz_ag = survey_mean(q_401_o_bin),
            ownbiz_nonag = survey_mean(q_401_p_bin),
            rent = survey_mean(q_401_q_bin),
            remit = survey_mean(q_401_r_bin),
            gifts = survey_mean(q_401_s_bin),
            safety_net = survey_mean(q_401_t_bin))
```
:::

::: {.cell hash='South-Sudan-resilience---frequencies_cache/html/unnamed-chunk-28_7023b14453f751169f47d49d1b9f8d81'}

```{.r .cell-code}
ov_cols <- seq_len(40) %% 2

inc_ov_mn <- inc_ov_tmp[, ov_cols==T] %>%
    pivot_longer(cols=1:20,
               names_to="income_source",
               values_to="Percent") %>%
  mutate(inc_lab=inc_labs) %>%
  relocate(inc_lab, .after=income_source)

inc_ov_se <- inc_ov_tmp[,ov_cols==F] %>%
  pivot_longer(cols=1:20,
               names_to="income_source",
               values_to="se")

inc_ov <- inc_ov_mn %>%
  bind_cols(inc_ov_se[,2]) %>%
  mutate(margin=se*1.96,
         lower=Percent-margin,
         upper=Percent+margin)

inc_gt <- inc_ov %>%
  select(-1, -4) %>%
  arrange(desc(Percent)) %>%
  gt() %>%
  fmt_percent(2:5,
              decimals=1) %>%
  cols_label(inc_lab="Income source") %>%
  tab_source_note("Survey instsrument items 401a-t")


inc_gt
```

::: {.cell-output-display}
```{=html}
<div id="ldwretdqry" style="overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#ldwretdqry .gt_table {
  display: table;
  border-collapse: collapse;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#ldwretdqry .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#ldwretdqry .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#ldwretdqry .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#ldwretdqry .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#ldwretdqry .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#ldwretdqry .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#ldwretdqry .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#ldwretdqry .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#ldwretdqry .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#ldwretdqry .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#ldwretdqry .gt_group_heading {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
}

#ldwretdqry .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#ldwretdqry .gt_from_md > :first-child {
  margin-top: 0;
}

#ldwretdqry .gt_from_md > :last-child {
  margin-bottom: 0;
}

#ldwretdqry .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#ldwretdqry .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
}

#ldwretdqry .gt_stub_row_group {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
  vertical-align: top;
}

#ldwretdqry .gt_row_group_first td {
  border-top-width: 2px;
}

#ldwretdqry .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#ldwretdqry .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #D3D3D3;
}

#ldwretdqry .gt_first_summary_row.thick {
  border-top-width: 2px;
}

#ldwretdqry .gt_last_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#ldwretdqry .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#ldwretdqry .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#ldwretdqry .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#ldwretdqry .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#ldwretdqry .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#ldwretdqry .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding-left: 4px;
  padding-right: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#ldwretdqry .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#ldwretdqry .gt_sourcenote {
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#ldwretdqry .gt_left {
  text-align: left;
}

#ldwretdqry .gt_center {
  text-align: center;
}

#ldwretdqry .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#ldwretdqry .gt_font_normal {
  font-weight: normal;
}

#ldwretdqry .gt_font_bold {
  font-weight: bold;
}

#ldwretdqry .gt_font_italic {
  font-style: italic;
}

#ldwretdqry .gt_super {
  font-size: 65%;
}

#ldwretdqry .gt_footnote_marks {
  font-style: italic;
  font-weight: normal;
  font-size: 75%;
  vertical-align: 0.4em;
}

#ldwretdqry .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}

#ldwretdqry .gt_slash_mark {
  font-size: 0.7em;
  line-height: 0.7em;
  vertical-align: 0.15em;
}

#ldwretdqry .gt_fraction_numerator {
  font-size: 0.6em;
  line-height: 0.6em;
  vertical-align: 0.45em;
}

#ldwretdqry .gt_fraction_denominator {
  font-size: 0.6em;
  line-height: 0.6em;
  vertical-align: -0.05em;
}
</style>
<table class="gt_table">
  
  <thead class="gt_col_headings">
    <tr>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">Income source</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1">Percent</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1">margin</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1">lower</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1">upper</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><td class="gt_row gt_left">Farm/crop production</td>
<td class="gt_row gt_right">56.5%</td>
<td class="gt_row gt_right">3.7%</td>
<td class="gt_row gt_right">52.9%</td>
<td class="gt_row gt_right">60.2%</td></tr>
    <tr><td class="gt_row gt_left">Cattle production/sales</td>
<td class="gt_row gt_right">54.0%</td>
<td class="gt_row gt_right">3.4%</td>
<td class="gt_row gt_right">50.6%</td>
<td class="gt_row gt_right">57.4%</td></tr>
    <tr><td class="gt_row gt_left">Goat production/sales</td>
<td class="gt_row gt_right">45.3%</td>
<td class="gt_row gt_right">3.2%</td>
<td class="gt_row gt_right">42.1%</td>
<td class="gt_row gt_right">48.5%</td></tr>
    <tr><td class="gt_row gt_left">Fishing and sales</td>
<td class="gt_row gt_right">41.5%</td>
<td class="gt_row gt_right">3.0%</td>
<td class="gt_row gt_right">38.5%</td>
<td class="gt_row gt_right">44.5%</td></tr>
    <tr><td class="gt_row gt_left">Wild bush sales</td>
<td class="gt_row gt_right">39.7%</td>
<td class="gt_row gt_right">3.7%</td>
<td class="gt_row gt_right">36.0%</td>
<td class="gt_row gt_right">43.4%</td></tr>
    <tr><td class="gt_row gt_left">Sheep production/sales</td>
<td class="gt_row gt_right">32.1%</td>
<td class="gt_row gt_right">3.2%</td>
<td class="gt_row gt_right">28.9%</td>
<td class="gt_row gt_right">35.4%</td></tr>
    <tr><td class="gt_row gt_left">Wage labor in village</td>
<td class="gt_row gt_right">30.5%</td>
<td class="gt_row gt_right">3.4%</td>
<td class="gt_row gt_right">27.2%</td>
<td class="gt_row gt_right">33.9%</td></tr>
    <tr><td class="gt_row gt_left">Food / cash safety net</td>
<td class="gt_row gt_right">28.5%</td>
<td class="gt_row gt_right">3.7%</td>
<td class="gt_row gt_right">24.9%</td>
<td class="gt_row gt_right">32.2%</td></tr>
    <tr><td class="gt_row gt_left">Ag wage labor in village</td>
<td class="gt_row gt_right">24.8%</td>
<td class="gt_row gt_right">3.0%</td>
<td class="gt_row gt_right">21.9%</td>
<td class="gt_row gt_right">27.8%</td></tr>
    <tr><td class="gt_row gt_left">Gifts/inheritance</td>
<td class="gt_row gt_right">24.4%</td>
<td class="gt_row gt_right">3.6%</td>
<td class="gt_row gt_right">20.7%</td>
<td class="gt_row gt_right">28.0%</td></tr>
    <tr><td class="gt_row gt_left">Honey production/sales</td>
<td class="gt_row gt_right">23.2%</td>
<td class="gt_row gt_right">3.0%</td>
<td class="gt_row gt_right">20.2%</td>
<td class="gt_row gt_right">26.3%</td></tr>
    <tr><td class="gt_row gt_left">Petty trade own products</td>
<td class="gt_row gt_right">13.5%</td>
<td class="gt_row gt_right">2.6%</td>
<td class="gt_row gt_right">10.9%</td>
<td class="gt_row gt_right">16.2%</td></tr>
    <tr><td class="gt_row gt_left">Petty trade other products</td>
<td class="gt_row gt_right">12.5%</td>
<td class="gt_row gt_right">2.1%</td>
<td class="gt_row gt_right">10.4%</td>
<td class="gt_row gt_right">14.6%</td></tr>
    <tr><td class="gt_row gt_left">Salaried work</td>
<td class="gt_row gt_right">12.2%</td>
<td class="gt_row gt_right">1.8%</td>
<td class="gt_row gt_right">10.4%</td>
<td class="gt_row gt_right">13.9%</td></tr>
    <tr><td class="gt_row gt_left">Other self-employment non-ag</td>
<td class="gt_row gt_right">12.1%</td>
<td class="gt_row gt_right">2.4%</td>
<td class="gt_row gt_right">9.7%</td>
<td class="gt_row gt_right">14.5%</td></tr>
    <tr><td class="gt_row gt_left">Other self-employment ag</td>
<td class="gt_row gt_right">11.2%</td>
<td class="gt_row gt_right">1.9%</td>
<td class="gt_row gt_right">9.3%</td>
<td class="gt_row gt_right">13.1%</td></tr>
    <tr><td class="gt_row gt_left">Ag wage labor outside village</td>
<td class="gt_row gt_right">10.2%</td>
<td class="gt_row gt_right">1.6%</td>
<td class="gt_row gt_right">8.6%</td>
<td class="gt_row gt_right">11.8%</td></tr>
    <tr><td class="gt_row gt_left">Wage labor outside village</td>
<td class="gt_row gt_right">8.9%</td>
<td class="gt_row gt_right">1.6%</td>
<td class="gt_row gt_right">7.3%</td>
<td class="gt_row gt_right">10.5%</td></tr>
    <tr><td class="gt_row gt_left">Rental of land/property</td>
<td class="gt_row gt_right">6.1%</td>
<td class="gt_row gt_right">1.3%</td>
<td class="gt_row gt_right">4.8%</td>
<td class="gt_row gt_right">7.4%</td></tr>
    <tr><td class="gt_row gt_left">Remittances</td>
<td class="gt_row gt_right">5.6%</td>
<td class="gt_row gt_right">1.0%</td>
<td class="gt_row gt_right">4.6%</td>
<td class="gt_row gt_right">6.7%</td></tr>
  </tbody>
  <tfoot class="gt_sourcenotes">
    <tr>
      <td class="gt_sourcenote" colspan="5">Survey instsrument items 401a-t</td>
    </tr>
  </tfoot>
  
</table>
</div>
```
:::
:::

## By county

### Long format, with confidence intervals

::: {.cell hash='South-Sudan-resilience---frequencies_cache/html/unnamed-chunk-30_fc8ba7de4cd5b511a9025d73eb483c5d'}

```{.r .cell-code}
inc_cnty_tmp <- svyrdat %>%
  group_by(county) %>%
  summarize(crop_production=survey_mean(q_401_a_bin),
            cattle_production = survey_mean(q_401_b_bin),
            goat_production = survey_mean(q_401_c_bin),
            sheep_production = survey_mean(q_401_d_bin),
            fishing = survey_mean(q_401_e_bin),
            Agwage_within = survey_mean(q_401_f_bin),
            Agwage_without = survey_mean(q_401_g_bin),
            nonAgwage_within = survey_mean(q_401_h_bin),
            nonAgwage_without = survey_mean(q_401_i_bin),
            salary = survey_mean(q_401_j_bin),
            bush_products = survey_mean(q_401_k_bin),
            honey = survey_mean(q_401_l_bin),
            petty_trade_other = survey_mean(q_401_m_bin),
            petty_trade_own = survey_mean(q_401_n_bin),
            ownbiz_ag = survey_mean(q_401_o_bin),
            ownbiz_nonag = survey_mean(q_401_p_bin),
            rent = survey_mean(q_401_q_bin),
            remit = survey_mean(q_401_r_bin),
            gifts = survey_mean(q_401_s_bin),
            safety_net = survey_mean(q_401_t_bin))
```
:::

::: {.cell hash='South-Sudan-resilience---frequencies_cache/html/unnamed-chunk-32_86982098571ba8e4ac631f9fbd0027b0'}

```{.r .cell-code}
cnty_cols <- seq_len(41) %% 2

inc_cnty_mn <- inc_cnty_tmp[, cnty_cols==F] %>%
  mutate(county=county_key$county) %>%
  relocate(county, .before=1) %>%
  pivot_longer(cols=2:21,
               names_to="income_source",
               values_to="Percent") %>%
  mutate(inc_lab = rep(inc_labs, 13))

inc_cnty_se <- inc_cnty_tmp[,cnty_cols==T] %>%
  pivot_longer(cols=2:21,
               names_to="income_source",
               values_to="se")

inc_cnty <- inc_cnty_mn %>%
  bind_cols(inc_cnty_se[,3]) %>%
  mutate(margin=se*1.96,
         lower=Percent-margin,
         upper=Percent+margin) %>%
  relocate(inc_lab, .after=income_source)

#Reactable with filters for county and income source

inc_cnty_obj <- inc_cnty %>% 
  select(-2, -5, -6) 

data_inc_cnty_obj <- SharedData$new(inc_cnty_obj)

bscols(
  widths = c(3, 9)
  , list(filter_select("county"
                       , "County"
                       , data_inc_cnty_obj
                       , ~county)
         ,filter_select("inc_lab"
                       , "Income source"
                       , data_inc_cnty_obj
                       , ~inc_lab))
  , reactable(data_inc_cnty_obj, showPageSizeOptions = T, highlight = T, columns = list(
    county = colDef(name = "County")
    , inc_lab = colDef(name = "Income source", minWidth = 150)
    , Percent = colDef(name = "Percent"
                     , format = colFormat(percent = T
                                          , digits = 1))
    , lower = colDef(name = "Lower"
                     , format = colFormat(percent = T
                                          , digits = 1))
    , upper = colDef(name = "Upper"
                     , format = colFormat(percent = T
                                          , digits = 1))
  )))
```

::: {.cell-output-display}
```{=html}
<div class="container-fluid crosstalk-bscols">
<div class="row">
<div class="col-xs-3">
<div id="county" class="form-group crosstalk-input-select crosstalk-input">
<label class="control-label" for="county">County</label>
<div>
<select multiple></select>
<script type="application/json" data-for="county">{
  "items": {
    "value": ["Akobo", "Baliet", "Budi", "Duk", "Jur River", "Kapoeta North", "Leer", "Mayendit", "Paynijar", "Pibor", "Ulang", "Uror", "Wau"],
    "label": ["Akobo", "Baliet", "Budi", "Duk", "Jur River", "Kapoeta North", "Leer", "Mayendit", "Paynijar", "Pibor", "Ulang", "Uror", "Wau"]
  },
  "map": {
    "Akobo": ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20"],
    "Baliet": ["21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40"],
    "Budi": ["41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60"],
    "Duk": ["61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80"],
    "Jur River": ["81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100"],
    "Kapoeta North": ["101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120"],
    "Leer": ["121", "122", "123", "124", "125", "126", "127", "128", "129", "130", "131", "132", "133", "134", "135", "136", "137", "138", "139", "140"],
    "Mayendit": ["141", "142", "143", "144", "145", "146", "147", "148", "149", "150", "151", "152", "153", "154", "155", "156", "157", "158", "159", "160"],
    "Paynijar": ["161", "162", "163", "164", "165", "166", "167", "168", "169", "170", "171", "172", "173", "174", "175", "176", "177", "178", "179", "180"],
    "Pibor": ["181", "182", "183", "184", "185", "186", "187", "188", "189", "190", "191", "192", "193", "194", "195", "196", "197", "198", "199", "200"],
    "Ulang": ["201", "202", "203", "204", "205", "206", "207", "208", "209", "210", "211", "212", "213", "214", "215", "216", "217", "218", "219", "220"],
    "Uror": ["221", "222", "223", "224", "225", "226", "227", "228", "229", "230", "231", "232", "233", "234", "235", "236", "237", "238", "239", "240"],
    "Wau": ["241", "242", "243", "244", "245", "246", "247", "248", "249", "250", "251", "252", "253", "254", "255", "256", "257", "258", "259", "260"]
  },
  "group": ["SharedData864b539d"]
}</script>
</div>
</div>
<div id="inc_lab" class="form-group crosstalk-input-select crosstalk-input">
<label class="control-label" for="inc_lab">Income source</label>
<div>
<select multiple></select>
<script type="application/json" data-for="inc_lab">{
  "items": {
    "value": ["Ag wage labor in village", "Ag wage labor outside village", "Cattle production/sales", "Farm/crop production", "Fishing and sales", "Food / cash safety net", "Gifts/inheritance", "Goat production/sales", "Honey production/sales", "Other self-employment ag", "Other self-employment non-ag", "Petty trade other products", "Petty trade own products", "Remittances", "Rental of land/property", "Salaried work", "Sheep production/sales", "Wage labor in village", "Wage labor outside village", "Wild bush sales"],
    "label": ["Ag wage labor in village", "Ag wage labor outside village", "Cattle production/sales", "Farm/crop production", "Fishing and sales", "Food / cash safety net", "Gifts/inheritance", "Goat production/sales", "Honey production/sales", "Other self-employment ag", "Other self-employment non-ag", "Petty trade other products", "Petty trade own products", "Remittances", "Rental of land/property", "Salaried work", "Sheep production/sales", "Wage labor in village", "Wage labor outside village", "Wild bush sales"]
  },
  "map": {
    "Ag wage labor in village": ["6", "26", "46", "66", "86", "106", "126", "146", "166", "186", "206", "226", "246"],
    "Ag wage labor outside village": ["7", "27", "47", "67", "87", "107", "127", "147", "167", "187", "207", "227", "247"],
    "Cattle production/sales": ["2", "22", "42", "62", "82", "102", "122", "142", "162", "182", "202", "222", "242"],
    "Farm/crop production": ["1", "21", "41", "61", "81", "101", "121", "141", "161", "181", "201", "221", "241"],
    "Fishing and sales": ["5", "25", "45", "65", "85", "105", "125", "145", "165", "185", "205", "225", "245"],
    "Food / cash safety net": ["20", "40", "60", "80", "100", "120", "140", "160", "180", "200", "220", "240", "260"],
    "Gifts/inheritance": ["19", "39", "59", "79", "99", "119", "139", "159", "179", "199", "219", "239", "259"],
    "Goat production/sales": ["3", "23", "43", "63", "83", "103", "123", "143", "163", "183", "203", "223", "243"],
    "Honey production/sales": ["12", "32", "52", "72", "92", "112", "132", "152", "172", "192", "212", "232", "252"],
    "Other self-employment ag": ["15", "35", "55", "75", "95", "115", "135", "155", "175", "195", "215", "235", "255"],
    "Other self-employment non-ag": ["16", "36", "56", "76", "96", "116", "136", "156", "176", "196", "216", "236", "256"],
    "Petty trade other products": ["13", "33", "53", "73", "93", "113", "133", "153", "173", "193", "213", "233", "253"],
    "Petty trade own products": ["14", "34", "54", "74", "94", "114", "134", "154", "174", "194", "214", "234", "254"],
    "Remittances": ["18", "38", "58", "78", "98", "118", "138", "158", "178", "198", "218", "238", "258"],
    "Rental of land/property": ["17", "37", "57", "77", "97", "117", "137", "157", "177", "197", "217", "237", "257"],
    "Salaried work": ["10", "30", "50", "70", "90", "110", "130", "150", "170", "190", "210", "230", "250"],
    "Sheep production/sales": ["4", "24", "44", "64", "84", "104", "124", "144", "164", "184", "204", "224", "244"],
    "Wage labor in village": ["8", "28", "48", "68", "88", "108", "128", "148", "168", "188", "208", "228", "248"],
    "Wage labor outside village": ["9", "29", "49", "69", "89", "109", "129", "149", "169", "189", "209", "229", "249"],
    "Wild bush sales": ["11", "31", "51", "71", "91", "111", "131", "151", "171", "191", "211", "231", "251"]
  },
  "group": ["SharedData864b539d"]
}</script>
</div>
</div>
</div>
<div class="col-xs-9">
<div id="htmlwidget-5418e72fc45ac95d6ee9" class="reactable html-widget" style="width:auto;height:auto;"></div>
<script type="application/json" data-for="htmlwidget-5418e72fc45ac95d6ee9">{"x":{"tag":{"name":"Reactable","attribs":{"data":{"county":["Akobo","Akobo","Akobo","Akobo","Akobo","Akobo","Akobo","Akobo","Akobo","Akobo","Akobo","Akobo","Akobo","Akobo","Akobo","Akobo","Akobo","Akobo","Akobo","Akobo","Baliet","Baliet","Baliet","Baliet","Baliet","Baliet","Baliet","Baliet","Baliet","Baliet","Baliet","Baliet","Baliet","Baliet","Baliet","Baliet","Baliet","Baliet","Baliet","Baliet","Budi","Budi","Budi","Budi","Budi","Budi","Budi","Budi","Budi","Budi","Budi","Budi","Budi","Budi","Budi","Budi","Budi","Budi","Budi","Budi","Duk","Duk","Duk","Duk","Duk","Duk","Duk","Duk","Duk","Duk","Duk","Duk","Duk","Duk","Duk","Duk","Duk","Duk","Duk","Duk","Jur River","Jur River","Jur River","Jur River","Jur River","Jur River","Jur River","Jur River","Jur River","Jur River","Jur River","Jur River","Jur River","Jur River","Jur River","Jur River","Jur River","Jur River","Jur River","Jur River","Kapoeta North","Kapoeta North","Kapoeta North","Kapoeta North","Kapoeta North","Kapoeta North","Kapoeta North","Kapoeta North","Kapoeta North","Kapoeta North","Kapoeta North","Kapoeta North","Kapoeta North","Kapoeta North","Kapoeta North","Kapoeta North","Kapoeta North","Kapoeta North","Kapoeta North","Kapoeta North","Leer","Leer","Leer","Leer","Leer","Leer","Leer","Leer","Leer","Leer","Leer","Leer","Leer","Leer","Leer","Leer","Leer","Leer","Leer","Leer","Mayendit","Mayendit","Mayendit","Mayendit","Mayendit","Mayendit","Mayendit","Mayendit","Mayendit","Mayendit","Mayendit","Mayendit","Mayendit","Mayendit","Mayendit","Mayendit","Mayendit","Mayendit","Mayendit","Mayendit","Paynijar","Paynijar","Paynijar","Paynijar","Paynijar","Paynijar","Paynijar","Paynijar","Paynijar","Paynijar","Paynijar","Paynijar","Paynijar","Paynijar","Paynijar","Paynijar","Paynijar","Paynijar","Paynijar","Paynijar","Pibor","Pibor","Pibor","Pibor","Pibor","Pibor","Pibor","Pibor","Pibor","Pibor","Pibor","Pibor","Pibor","Pibor","Pibor","Pibor","Pibor","Pibor","Pibor","Pibor","Ulang","Ulang","Ulang","Ulang","Ulang","Ulang","Ulang","Ulang","Ulang","Ulang","Ulang","Ulang","Ulang","Ulang","Ulang","Ulang","Ulang","Ulang","Ulang","Ulang","Uror","Uror","Uror","Uror","Uror","Uror","Uror","Uror","Uror","Uror","Uror","Uror","Uror","Uror","Uror","Uror","Uror","Uror","Uror","Uror","Wau","Wau","Wau","Wau","Wau","Wau","Wau","Wau","Wau","Wau","Wau","Wau","Wau","Wau","Wau","Wau","Wau","Wau","Wau","Wau"],"inc_lab":["Farm/crop production","Cattle production/sales","Goat production/sales","Sheep production/sales","Fishing and sales","Ag wage labor in village","Ag wage labor outside village","Wage labor in village","Wage labor outside village","Salaried work","Wild bush sales","Honey production/sales","Petty trade other products","Petty trade own products","Other self-employment ag","Other self-employment non-ag","Rental of land/property","Remittances","Gifts/inheritance","Food / cash safety net","Farm/crop production","Cattle production/sales","Goat production/sales","Sheep production/sales","Fishing and sales","Ag wage labor in village","Ag wage labor outside village","Wage labor in village","Wage labor outside village","Salaried work","Wild bush sales","Honey production/sales","Petty trade other products","Petty trade own products","Other self-employment ag","Other self-employment non-ag","Rental of land/property","Remittances","Gifts/inheritance","Food / cash safety net","Farm/crop production","Cattle production/sales","Goat production/sales","Sheep production/sales","Fishing and sales","Ag wage labor in village","Ag wage labor outside village","Wage labor in village","Wage labor outside village","Salaried work","Wild bush sales","Honey production/sales","Petty trade other products","Petty trade own products","Other self-employment ag","Other self-employment non-ag","Rental of land/property","Remittances","Gifts/inheritance","Food / cash safety net","Farm/crop production","Cattle production/sales","Goat production/sales","Sheep production/sales","Fishing and sales","Ag wage labor in village","Ag wage labor outside village","Wage labor in village","Wage labor outside village","Salaried work","Wild bush sales","Honey production/sales","Petty trade other products","Petty trade own products","Other self-employment ag","Other self-employment non-ag","Rental of land/property","Remittances","Gifts/inheritance","Food / cash safety net","Farm/crop production","Cattle production/sales","Goat production/sales","Sheep production/sales","Fishing and sales","Ag wage labor in village","Ag wage labor outside village","Wage labor in village","Wage labor outside village","Salaried work","Wild bush sales","Honey production/sales","Petty trade other products","Petty trade own products","Other self-employment ag","Other self-employment non-ag","Rental of land/property","Remittances","Gifts/inheritance","Food / cash safety net","Farm/crop production","Cattle production/sales","Goat production/sales","Sheep production/sales","Fishing and sales","Ag wage labor in village","Ag wage labor outside village","Wage labor in village","Wage labor outside village","Salaried work","Wild bush sales","Honey production/sales","Petty trade other products","Petty trade own products","Other self-employment ag","Other self-employment non-ag","Rental of land/property","Remittances","Gifts/inheritance","Food / cash safety net","Farm/crop production","Cattle production/sales","Goat production/sales","Sheep production/sales","Fishing and sales","Ag wage labor in village","Ag wage labor outside village","Wage labor in village","Wage labor outside village","Salaried work","Wild bush sales","Honey production/sales","Petty trade other products","Petty trade own products","Other self-employment ag","Other self-employment non-ag","Rental of land/property","Remittances","Gifts/inheritance","Food / cash safety net","Farm/crop production","Cattle production/sales","Goat production/sales","Sheep production/sales","Fishing and sales","Ag wage labor in village","Ag wage labor outside village","Wage labor in village","Wage labor outside village","Salaried work","Wild bush sales","Honey production/sales","Petty trade other products","Petty trade own products","Other self-employment ag","Other self-employment non-ag","Rental of land/property","Remittances","Gifts/inheritance","Food / cash safety net","Farm/crop production","Cattle production/sales","Goat production/sales","Sheep production/sales","Fishing and sales","Ag wage labor in village","Ag wage labor outside village","Wage labor in village","Wage labor outside village","Salaried work","Wild bush sales","Honey production/sales","Petty trade other products","Petty trade own products","Other self-employment ag","Other self-employment non-ag","Rental of land/property","Remittances","Gifts/inheritance","Food / cash safety net","Farm/crop production","Cattle production/sales","Goat production/sales","Sheep production/sales","Fishing and sales","Ag wage labor in village","Ag wage labor outside village","Wage labor in village","Wage labor outside village","Salaried work","Wild bush sales","Honey production/sales","Petty trade other products","Petty trade own products","Other self-employment ag","Other self-employment non-ag","Rental of land/property","Remittances","Gifts/inheritance","Food / cash safety net","Farm/crop production","Cattle production/sales","Goat production/sales","Sheep production/sales","Fishing and sales","Ag wage labor in village","Ag wage labor outside village","Wage labor in village","Wage labor outside village","Salaried work","Wild bush sales","Honey production/sales","Petty trade other products","Petty trade own products","Other self-employment ag","Other self-employment non-ag","Rental of land/property","Remittances","Gifts/inheritance","Food / cash safety net","Farm/crop production","Cattle production/sales","Goat production/sales","Sheep production/sales","Fishing and sales","Ag wage labor in village","Ag wage labor outside village","Wage labor in village","Wage labor outside village","Salaried work","Wild bush sales","Honey production/sales","Petty trade other products","Petty trade own products","Other self-employment ag","Other self-employment non-ag","Rental of land/property","Remittances","Gifts/inheritance","Food / cash safety net","Farm/crop production","Cattle production/sales","Goat production/sales","Sheep production/sales","Fishing and sales","Ag wage labor in village","Ag wage labor outside village","Wage labor in village","Wage labor outside village","Salaried work","Wild bush sales","Honey production/sales","Petty trade other products","Petty trade own products","Other self-employment ag","Other self-employment non-ag","Rental of land/property","Remittances","Gifts/inheritance","Food / cash safety net"],"Percent":[0.183346632584671,0.284355207046683,0.10696365193795,0.0301861451934236,0.544800321137271,0.0039755018686389,0,0.228860942645038,0.0136960464756465,0.0649395206194809,0.343363585942995,0.127484909471791,0.00532148143712092,0.0453781404356319,0.0124163714011683,0.0398703940758624,0.00291530205665452,0.0285640539688505,0.196129436459682,0.210908566281468,0.432467592189955,0.268087784986709,0.290087833015687,0.20106449673885,0.492957650998352,0.521291674678765,0.290221143777451,0.20166407446422,0.120791538746036,0.123143936374263,0.366611004020711,0.111628080429488,0.172059763262801,0.153617211329942,0.0865956466318503,0.0569636956982983,0.0195847829346264,0.152624775715167,0.0748317548069843,0.298259675245293,0.730592387201937,0.269706478405812,0.347340111020823,0.240409816770743,0.00595244074559477,0.111108356899477,0.0548906747259675,0.0701086952723963,0.0416687187590725,0.0697292270304916,0.314957959464349,0.272388056012706,0.110820495596954,0.420298445344604,0.0998370699713919,0.0859121625792703,0.00585854747781098,0.0360658700004502,0.181484442678079,0.123246213365122,0.81350623388238,0.57677987671701,0.498881066214144,0.321828781960594,0.563753226528857,0.0863671010376735,0.035677981457331,0.0368760793484894,0.0190750693298727,0.121912929313752,0.31134280464816,0.0520094112012957,0.281712355455567,0.213271544834079,0.0210533329780207,0.0212838931812062,0.00384343212948853,0.0402546924199602,0.0648392505371536,0.431283307926366,0.618806635835259,0.238109912759336,0.531625761935433,0.336813227432289,0.259612380351437,0.450638136581554,0.296373021206437,0.261735831353119,0.156456592757533,0.181862447842768,0.112224962617336,0.274772012293075,0.233789860754777,0.127730005383891,0.139879185439488,0.0841107342213942,0.0235562400450444,0.0649644552850129,0.0551669961967183,0.0421284144593097,0.828818752695302,0.825821497683024,0.870714289168136,0.823770542727144,0.162974550831392,0.427593866622081,0.120195049201897,0.313322648792201,0.0996138963011301,0.0615822352379092,0.571830710531574,0.20489133036849,0.370031685877461,0.0968594742007498,0.334077768807845,0.327473611321308,0.108634379997739,0.0682222183352736,0.2462298343285,0.446748357596994,0.12614032896222,0.0460781753632179,0.25262340438789,0.100254013711761,0.390810065569649,0.0915979453357264,0.0873354590027529,0.53248447062884,0.124457054895577,0.0447008090845694,0.265258626862002,0.00966615176644795,0.0524267605349358,0.181936842651188,0.0308020344836136,0.11371685526837,0.00397149778013897,0.130750516747244,0.299786309206759,0.514870613672756,0.204268502280024,0.319638185275133,0.328550177551724,0.221945949474878,0.593091071545524,0.0316875991818393,0.0369573482973077,0.139780890350129,0.0373220161326193,0.106891409649425,0.0689887343517655,0.00490450604585774,0.0176064543234482,0.0996607828576975,0.0148591286189278,0.082472976390062,0.000727718745464239,0.0579329152177697,0.180339056318992,0.103734715279133,0.362874219353557,0.442340877681773,0.249795614925702,0.170710622987381,0.562750495476022,0.030258898593938,0.00979131473234105,0.237903811747535,0.0231461417740496,0.0404544565306502,0.305642703607821,0.00507726279326397,0.0273042615684722,0.171157335942358,0.0507834966811472,0.0704294446809223,0.00282229596130462,0.0282349083155138,0.121034932426047,0.245226175954064,0.909578939193877,0.821546011010962,0.743471904821101,0.639832413198843,0.722623263090753,0.584963271432878,0.197178858418117,0.538766006092568,0.170281341882421,0.202994260026259,0.773997323808691,0.662015152214805,0.133487577172459,0.13063489853379,0.140253498872449,0.113983310002847,0.129663452513889,0.0617852092895135,0.581710720093624,0.565253635572589,0.478076224169246,0.573334607103778,0.524500584447218,0.337186229014397,0.786973088010069,0.0858668024730926,0.0795371062068524,0.320341936044132,0.121362203077299,0.046278353432569,0.268122145604481,0.265049448253236,0.0870430442325602,0.253490138275516,0.163898968089966,0.239918884164828,0.04271891921271,0.0563390668390754,0.166316184321771,0.249334985213748,0.382924717013446,0.748589416122822,0.427473790815699,0.176029744653314,0.324868006085181,0.0775898386902185,0.0172813769033603,0.294298919864162,0.0152830007743368,0.0354582427429639,0.286624554206383,0.0435727199708578,0.0393659206947321,0.0318994725672663,0.0760647120763901,0.0890018336601995,0.0089943481595614,0.0103561183873042,0.134303136111323,0.0904780912512227,0.497009182546113,0.0942213881137746,0.070973271093781,0.0735385484676036,0.104732976699121,0.209635796234587,0.133991655235648,0.202690632897011,0.168640806364559,0.328543420994721,0.215599575825096,0.108874697890437,0.217890022379687,0.163708610538708,0.153903057164733,0.220234915055878,0.208728682319734,0.135100027929275,0.122079947861562,0.254967377777054],"lower":[0.118095106645632,0.200732950951442,0.0735790801823988,0.0106019241419249,0.429051007374549,-0.0017096265469385,0,0.146751031356781,-0.000120882035541964,0.0344354031227834,0.260964889300927,0.0766682766728239,-0.000748507218204677,0.0181092769273115,-0.00426832602425404,0.013114182965286,-0.00113463266615471,0.0150945242190229,0.135061973936901,0.140919076549415,0.256056883241673,0.11330341745412,0.151640440528835,0.05558141780248,0.339409355747298,0.401139902469144,0.16717853937042,0.0825323404179321,0.0531466641599336,0.0813502286530873,0.198331883068971,0.0259993480412384,0.0997805336874273,0.0654672243001414,0.0371231922601148,0.0227677356168505,0.00647350429361433,0.0775834415985085,0.0259291128714034,0.112597865532578,0.61839746083985,0.166681956501004,0.255694625268408,0.158284131880187,-0.00167117797206671,0.0344649388733727,0.0273352870821093,0.0426089592054982,0.020280047878843,0.0347130122567611,0.194527298843667,0.133062803738091,0.0481662643990692,0.245550525215625,0.0364205812385835,0.0412934720334423,0.000250252029930578,0.0152406863781599,0.11015772427771,0.0724543443833011,0.699683813874727,0.446880170134238,0.346729354965001,0.148223812624376,0.424980482433486,0.0339895678944378,0.00964163708517796,0.0100399286447113,0.00277517977922002,0.0480151005775425,0.19625020444288,0.0168288691574689,0.114288335241717,0.0611166587056091,0.00487981436121232,0.00592396195426284,-0.000359539582948725,0.0137948781610567,0.0247341562149216,0.245030735653663,0.538417657013748,0.18011997198364,0.477717069183268,0.285724348634036,0.176685099303407,0.396131600197472,0.251369012689144,0.211335372816937,0.122842067546772,0.127222469100296,0.084269800837193,0.196430948186741,0.180212911130164,0.0897190390577622,0.0958231354465879,0.0574347333374066,0.00861423811382928,0.0333718812812907,0.0321045677453346,0.025672861378901,0.781328474932027,0.790322350846797,0.838889866655415,0.782368412173253,0.120344053832542,0.390994810567885,0.0918101442703575,0.265505745870865,0.0543690974583714,0.0336197905052186,0.503482645226495,0.156314366912719,0.269837926286921,0.056300697659273,0.267220151883305,0.258678172150809,0.0707451173863613,0.0399252187547015,0.209011460079586,0.377315662907307,0.0867107412217355,0.0234747242115021,0.204530394174543,0.0675155545568264,0.310358841704263,0.0548664134264855,0.0531892937925323,0.468163957291897,0.0805715081260679,0.026346337188731,0.220899585697363,0.00156065984168626,0.0307870461385905,0.142325101808355,0.0135840495872151,0.0839069593620287,-0.000269470705702879,0.105583460944859,0.253770601855559,0.394443095045702,0.139199013117871,0.22940886133034,0.247182235469339,0.142178501074919,0.534198241273524,0.0155417661014345,0.0204690441199439,0.0792362230013205,0.0198573332864843,0.0618838403115765,0.0422317700105733,-0.000948738221140279,0.0048385692573227,0.0607582923260787,0.0019526480335924,0.041044150156299,-0.000733920502570378,0.0349537898966599,0.131972527190386,0.0690447119308462,0.230024079061747,0.301406111966242,0.138468062121711,0.0498461385413732,0.459894261630841,0.00650288130376852,0.000798572697099011,0.120716281304374,-0.000177283321775166,0.0191607898591553,0.184412221352641,-0.000419331113773976,0.00547413278088266,0.0724494302432775,0.0161281721443367,0.0289951678367488,-0.000385288897077818,0.00935555771841695,0.0451490680472349,0.116772450312841,0.870219296110793,0.736799741543261,0.645934524308628,0.538800088831174,0.662686717298561,0.512441386399464,0.146172204238495,0.466447725462892,0.119715048492549,0.15035437751115,0.71444788343087,0.59256700887817,0.0763251083634827,0.063205990490177,0.0869800226980015,0.0579982215023473,0.0949825757737558,0.0268544092217416,0.487857141980683,0.459987496437061,0.334046340325041,0.434239802701271,0.364993518697008,0.203651499747657,0.696579958479907,0.0179516574850265,0.0142816914073201,0.167909834497263,0.0414505624384399,0.0171096836743643,0.132100091613749,0.171678083948654,0.0187067385528518,0.132320377643167,0.0610089594282057,0.0903409726102805,-0.00481060904520356,0.00856310273291262,0.0711917911807678,0.112239389203599,0.295097390953869,0.689542995199013,0.365727660132871,0.109440520570551,0.263228581662456,0.0310419668112691,0.0055641539912104,0.198401661400869,0.0041711805768213,0.0168346895089039,0.189683304270762,0.0227979773644851,0.0153373010929689,0.010476432495196,0.036444790910525,0.0158429796587544,-0.000680391288631996,-0.00152822999962166,0.0419338618320794,0.0282630515371274,0.368862855493241,0.0485047318093587,0.0324845368976533,0.04030732900293,0.0431778537495152,0.125301549685067,0.0820209505668965,0.134248849020142,0.0968447501914567,0.24985715553142,0.105331089546786,0.0539161255028946,0.142886694140099,0.0975535916907984,0.103215961852973,0.163602054480556,0.132302627751581,0.085784466660476,0.0738713006294341,0.133705659360154],"upper":[0.248598158523709,0.367977463141923,0.140348223693501,0.0497703662449223,0.660549634899994,0.0096606302842163,0,0.310970853933296,0.027512974986835,0.0954436381161784,0.425762282585063,0.178301542270757,0.0113914700924465,0.0726470039439524,0.0291010688265907,0.0666266051864389,0.00696523677946375,0.0420335837186781,0.257196898982463,0.280898056013521,0.608878301138237,0.422872152519298,0.428535225502538,0.346547575675219,0.646505946249407,0.641443446888387,0.413263748184482,0.320795808510509,0.188436413332139,0.164937644095438,0.534890124972451,0.197256812817738,0.244338992838174,0.241767198359743,0.136068101003586,0.091159655779746,0.0326960615756384,0.227666109831826,0.123734396742565,0.483921484958009,0.842787313564025,0.37273100031062,0.438985596773239,0.322535501661298,0.0135760594632563,0.187751774925582,0.0824460623698257,0.0976084313392943,0.063057389639302,0.104745441804222,0.43538862008503,0.411713308287321,0.17347472679484,0.595046365473584,0.1632535587042,0.130530853125098,0.0114668429256914,0.0568910536227405,0.252811161078447,0.174038082346942,0.927328653890032,0.706679583299783,0.651032777463287,0.495433751296812,0.702525970624229,0.138744634180909,0.061714325829484,0.0637122300522675,0.0353749588805254,0.195810758049962,0.426435404853441,0.0871899532451224,0.449136375669416,0.365426430962549,0.0372268515948291,0.0366438244081496,0.00804640384192579,0.0667145066788637,0.104944344859386,0.61753588019907,0.699195614656771,0.296099853535032,0.585534454687599,0.387902106230542,0.342539661399466,0.505144672965636,0.34137702972373,0.312136289889302,0.190071117968294,0.236502426585239,0.140180124397479,0.353113076399409,0.287366810379391,0.165740971710019,0.183935235432388,0.110786735105382,0.0384982419762594,0.096557029288735,0.078229424648102,0.0585839675397183,0.876309030458576,0.861320644519251,0.902538711680858,0.865172673281036,0.205605047830242,0.464192922676278,0.148579954133437,0.361139551713537,0.144858695143889,0.0895446799705998,0.640178775836653,0.253468293824261,0.470225445468,0.137418250742227,0.400935385732386,0.396269050491806,0.146523642609116,0.0965192179158458,0.283448208577415,0.516181052286681,0.165569916702705,0.0686816265149337,0.300716414601237,0.132992472866695,0.471261289435035,0.128329477244967,0.121481624212974,0.596804983965783,0.168342601665086,0.0630552809804078,0.30961766802664,0.0177716436912096,0.0740664749312811,0.221548583494021,0.0480200193800121,0.143526751174711,0.00821246626598083,0.155917572549629,0.34580201655796,0.635298132299809,0.269337991442178,0.409867509219926,0.40991811963411,0.301713397874837,0.651983901817523,0.0478334322622442,0.0534456524746714,0.200325557698937,0.0547866989787543,0.151898978987273,0.0957456986929576,0.0107577503128558,0.0303743393895736,0.138563273389316,0.0277656092042632,0.123901802623825,0.00218935799349886,0.0809120405388796,0.228705585447598,0.13842471862742,0.495724359645367,0.583275643397303,0.361123167729694,0.291575107433388,0.665606729321202,0.0540149158841074,0.0187840567675831,0.355091342190696,0.0464695668698743,0.0617481232021451,0.426873185863001,0.0105738567003019,0.0491343903560618,0.269865241641439,0.0854388212179577,0.111863721525096,0.00602988081968706,0.0471142589126106,0.196920796804859,0.373679901595287,0.948938582276961,0.906292280478664,0.841009285333574,0.740864737566511,0.782559808882945,0.657485156466293,0.24818551259774,0.611084286722245,0.220847635272294,0.255634142541368,0.833546764186512,0.731463295551439,0.190650045981435,0.198063806577403,0.193526975046896,0.169968398503347,0.164344329254021,0.0967160093572853,0.675564298206566,0.670519774708117,0.622106108013452,0.712429411506284,0.684007650197429,0.470720958281136,0.87736621754023,0.153781947461159,0.144792521006385,0.472774037591002,0.201273843716158,0.0754470231907736,0.404144199595214,0.358420812557818,0.155379349912269,0.374659898907864,0.266788976751727,0.389496795719375,0.0902484474706235,0.104115030945238,0.261440577462775,0.386430581223897,0.470752043073023,0.807635837046632,0.489219921498526,0.242618968736078,0.386507430507907,0.124137710569168,0.0289985998155102,0.390196178327455,0.0263948209718524,0.054081795977024,0.383565804142003,0.0643474625772305,0.0633945402964952,0.0533225126393367,0.115684633242255,0.162160687661644,0.0186690876077548,0.02224046677423,0.226672410390566,0.152693130965318,0.625155509598985,0.139938044418191,0.109462005289909,0.106769767932277,0.166288099648728,0.293970042784107,0.185962359904399,0.271132416773879,0.240436862537661,0.407229686458023,0.325868062103406,0.163833270277978,0.292893350619275,0.229863629386618,0.204590152476493,0.276867775631201,0.285154736887887,0.184415589198074,0.170288595093689,0.376229096193953]},"columns":[{"accessor":"county","name":"County","type":"character"},{"accessor":"inc_lab","name":"Income source","type":"character","minWidth":150},{"accessor":"Percent","name":"Percent","type":"numeric","format":{"cell":{"digits":1,"percent":true},"aggregated":{"digits":1,"percent":true}}},{"accessor":"lower","name":"Lower","type":"numeric","format":{"cell":{"digits":1,"percent":true},"aggregated":{"digits":1,"percent":true}}},{"accessor":"upper","name":"Upper","type":"numeric","format":{"cell":{"digits":1,"percent":true},"aggregated":{"digits":1,"percent":true}}}],"defaultPageSize":10,"showPageSizeOptions":true,"pageSizeOptions":[10,25,50,100],"paginationType":"numbers","showPageInfo":true,"minRows":1,"highlight":true,"crosstalkKey":["1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30","31","32","33","34","35","36","37","38","39","40","41","42","43","44","45","46","47","48","49","50","51","52","53","54","55","56","57","58","59","60","61","62","63","64","65","66","67","68","69","70","71","72","73","74","75","76","77","78","79","80","81","82","83","84","85","86","87","88","89","90","91","92","93","94","95","96","97","98","99","100","101","102","103","104","105","106","107","108","109","110","111","112","113","114","115","116","117","118","119","120","121","122","123","124","125","126","127","128","129","130","131","132","133","134","135","136","137","138","139","140","141","142","143","144","145","146","147","148","149","150","151","152","153","154","155","156","157","158","159","160","161","162","163","164","165","166","167","168","169","170","171","172","173","174","175","176","177","178","179","180","181","182","183","184","185","186","187","188","189","190","191","192","193","194","195","196","197","198","199","200","201","202","203","204","205","206","207","208","209","210","211","212","213","214","215","216","217","218","219","220","221","222","223","224","225","226","227","228","229","230","231","232","233","234","235","236","237","238","239","240","241","242","243","244","245","246","247","248","249","250","251","252","253","254","255","256","257","258","259","260"],"crosstalkGroup":"SharedData864b539d","dataKey":"f56ac690ed06832c275b684ff0b45d3c","key":"f56ac690ed06832c275b684ff0b45d3c"},"children":[]},"class":"reactR_markup"},"evals":[],"jsHooks":[]}</script>
</div>
</div>
</div>
```
:::
:::

### Wide format to better show income source across counties

::: {.cell hash='South-Sudan-resilience---frequencies_cache/html/unnamed-chunk-34_1b3e9a8da4ffc2041e6707a5ae9de83c'}

```{.r .cell-code}
inc_cnty_wide <- inc_cnty %>%
  select(1,3,4) %>%
  as.data.frame() %>%
  pivot_wider(names_from=county,
              values_from=Percent)

#Reactable with filter on Income source
data_inc_cnty_wide <- SharedData$new(inc_cnty_wide)

bscols(
  widths = c(3, 9)
  , list(filter_select("inc_lab"
                       , "Income source"
                       , data_inc_cnty_wide
                       , ~inc_lab))
  , reactable(data_inc_cnty_wide, showPageSizeOptions = T, highlight = T,  columns = list(
    inc_lab = colDef(name = "Income source"
                     , minWidth = 150
                     , sticky = "left"
                     , style = list(borderRight = "1px solid #eee"),
      headerStyle = list(borderRight = "1px solid #eee"))
    , Akobo = colDef(name = "Akobo"
                       , format = colFormat(percent = T, digits = 1))
    , Baliet = colDef(name = "Baliet"
                     , format = colFormat(percent = T
                                          , digits = 1))
    , Budi = colDef(name = "Budi"
                     , format = colFormat(percent = T
                                          , digits = 1))
    , Duk = colDef(name = "Duk"
                     , format = colFormat(percent = T
                                          , digits = 1))
    , "Jur River" = colDef(name = "Jur River"
                     , format = colFormat(percent = T
                                          , digits = 1))
    , "Kapoeta North" = colDef(name = "Kapoeta North"
                     , format = colFormat(percent = T
                                          , digits = 1))
    , Leer = colDef(name = "Leer"
                     , format = colFormat(percent = T
                                          , digits = 1))
    , Mayendit = colDef(name = "Mayendit"
                     , format = colFormat(percent = T
                                          , digits = 1))
    , Paynijar = colDef(name = "Paynijar"
                     , format = colFormat(percent = T
                                          , digits = 1))
    , Pibor = colDef(name = "Pibor"
                     , format = colFormat(percent = T
                                          , digits = 1))
    , Ulang = colDef(name = "Ulang"
                     , format = colFormat(percent = T
                                          , digits = 1))
    , Uror = colDef(name = "Uror"
                     , format = colFormat(percent = T
                                          , digits = 1))
    , Wau = colDef(name = "Wau"
                     , format = colFormat(percent = T
                                          , digits = 1))
  )))
```

::: {.cell-output-error}
```
Error in colDef(name = "Income source", minWidth = 150, sticky = "left", : unused argument (sticky = "left")
```
:::

```{.r .cell-code}
#inc_cnty_wide_gt <- inc_cnty_wide %>%
#  gt() %>%
 # fmt_percent(2:14,
 #             decimals=0) %>%
 # cols_label(inc_lab="Income source")

#inc_cnty_wide_gt
```
:::

## By reported conflicts

::: {.cell hash='South-Sudan-resilience---frequencies_cache/html/unnamed-chunk-36_103ca08a0aa062c69f060b23a8a2ce26'}

```{.r .cell-code}
inc_ov_tmp <- svyrdat %>%
  group_by() %>%
  summarize(crop_production=survey_mean(q_401_a_bin),
            cattle_production = survey_mean(q_401_b_bin),
            goat_production = survey_mean(q_401_c_bin),
            sheep_production = survey_mean(q_401_d_bin),
            fishing = survey_mean(q_401_e_bin),
            Agwage_within = survey_mean(q_401_f_bin),
            Agwage_without = survey_mean(q_401_g_bin),
            nonAgwage_within = survey_mean(q_401_h_bin),
            nonAgwage_without = survey_mean(q_401_i_bin),
            salary = survey_mean(q_401_j_bin),
            bush_products = survey_mean(q_401_k_bin),
            honey = survey_mean(q_401_l_bin),
            petty_trade_other = survey_mean(q_401_m_bin),
            petty_trade_own = survey_mean(q_401_n_bin),
            ownbiz_ag = survey_mean(q_401_o_bin),
            ownbiz_nonag = survey_mean(q_401_p_bin),
            rent = survey_mean(q_401_q_bin),
            remit = survey_mean(q_401_r_bin),
            gifts = survey_mean(q_401_s_bin),
            safety_net = survey_mean(q_401_t_bin))
```
:::

# Dietary diversity

Overall frequencies, ranked in descending order

::: {.cell hash='South-Sudan-resilience---frequencies_cache/html/unnamed-chunk-38_0ac9ed4355e3f572aaa38d25028b4001'}

```{.r .cell-code}
q403 <- svy_disag(svyrdat, "", q_403, "403","Cereals")
q404 <- svy_disag(svyrdat, "", q_404, "404","Roots/tubers")
q405 <- svy_disag(svyrdat, "", q_405, "405","Vitamin A vegetables")
q406 <- svy_disag(svyrdat, "", q_406, "406","Leafy greens")
q407 <- svy_disag(svyrdat, "", q_407, "407","Other vegetables")
q408 <- svy_disag(svyrdat, "", q_408, "408","Vitamin A fruits")
q409 <- svy_disag(svyrdat, "", q_409, "409","Other fruits")
q410 <- svy_disag(svyrdat, "", q_410, "410","Organ meat")
q411 <- svy_disag(svyrdat, "", q_411, "411","Domesticated meat")
q412 <- svy_disag(svyrdat, "", q_412, "412","Bush meat")
q413 <- svy_disag(svyrdat, "", q_413, "413","Eggs")
q414 <- svy_disag(svyrdat, "", q_414, "414","Fish")
q415 <- svy_disag(svyrdat, "", q_415, "415","Legumes")
q416 <- svy_disag(svyrdat, "", q_416, "416","Milk products")
q417 <- svy_disag(svyrdat, "", q_417, "417","Oil and fats")
q418 <- svy_disag(svyrdat, "", q_418, "418","Sweets")
q419 <- svy_disag(svyrdat, "", q_419, "419","Spices/condiments")

diet_ov <- bind_rows(q403,
                       q404,
                       q405,
                       q406,
                       q407,
                       q408,
                       q409,
                       q410,
                       q411,
                       q412,
                       q413,
                       q414,
                       q415,
                       q416,
                       q417,
                       q418,
                       q419) %>%
  select(Item=var_name,
         Food=label,
         Percent=Value, lower, upper) %>%
  arrange(desc(Percent))

write_csv(diet_ov, here("output/tables/food insecurity/diet items overall.csv"))

#gtsave(diet_ov_gt, here("output/tables/food insecurity/diet items overall.rtf"))

diet_ov_gt <- diet_ov %>%
  gt() %>%
  fmt_percent(3:5,
              decimals=1)

diet_ov_gt
```

::: {.cell-output-display}
```{=html}
<div id="ejojvxottx" style="overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#ejojvxottx .gt_table {
  display: table;
  border-collapse: collapse;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#ejojvxottx .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#ejojvxottx .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#ejojvxottx .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#ejojvxottx .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#ejojvxottx .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#ejojvxottx .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#ejojvxottx .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#ejojvxottx .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#ejojvxottx .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#ejojvxottx .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#ejojvxottx .gt_group_heading {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
}

#ejojvxottx .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#ejojvxottx .gt_from_md > :first-child {
  margin-top: 0;
}

#ejojvxottx .gt_from_md > :last-child {
  margin-bottom: 0;
}

#ejojvxottx .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#ejojvxottx .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
}

#ejojvxottx .gt_stub_row_group {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
  vertical-align: top;
}

#ejojvxottx .gt_row_group_first td {
  border-top-width: 2px;
}

#ejojvxottx .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#ejojvxottx .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #D3D3D3;
}

#ejojvxottx .gt_first_summary_row.thick {
  border-top-width: 2px;
}

#ejojvxottx .gt_last_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#ejojvxottx .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#ejojvxottx .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#ejojvxottx .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#ejojvxottx .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#ejojvxottx .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#ejojvxottx .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding-left: 4px;
  padding-right: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#ejojvxottx .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#ejojvxottx .gt_sourcenote {
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#ejojvxottx .gt_left {
  text-align: left;
}

#ejojvxottx .gt_center {
  text-align: center;
}

#ejojvxottx .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#ejojvxottx .gt_font_normal {
  font-weight: normal;
}

#ejojvxottx .gt_font_bold {
  font-weight: bold;
}

#ejojvxottx .gt_font_italic {
  font-style: italic;
}

#ejojvxottx .gt_super {
  font-size: 65%;
}

#ejojvxottx .gt_footnote_marks {
  font-style: italic;
  font-weight: normal;
  font-size: 75%;
  vertical-align: 0.4em;
}

#ejojvxottx .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}

#ejojvxottx .gt_slash_mark {
  font-size: 0.7em;
  line-height: 0.7em;
  vertical-align: 0.15em;
}

#ejojvxottx .gt_fraction_numerator {
  font-size: 0.6em;
  line-height: 0.6em;
  vertical-align: 0.45em;
}

#ejojvxottx .gt_fraction_denominator {
  font-size: 0.6em;
  line-height: 0.6em;
  vertical-align: -0.05em;
}
</style>
<table class="gt_table">
  
  <thead class="gt_col_headings">
    <tr>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">Item</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">Food</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1">Percent</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1">lower</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1">upper</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><td class="gt_row gt_left">403</td>
<td class="gt_row gt_left">Cereals</td>
<td class="gt_row gt_right">85.2%</td>
<td class="gt_row gt_right">82.7%</td>
<td class="gt_row gt_right">87.6%</td></tr>
    <tr><td class="gt_row gt_left">406</td>
<td class="gt_row gt_left">Leafy greens</td>
<td class="gt_row gt_right">66.7%</td>
<td class="gt_row gt_right">63.5%</td>
<td class="gt_row gt_right">69.8%</td></tr>
    <tr><td class="gt_row gt_left">414</td>
<td class="gt_row gt_left">Fish</td>
<td class="gt_row gt_right">61.1%</td>
<td class="gt_row gt_right">57.3%</td>
<td class="gt_row gt_right">64.9%</td></tr>
    <tr><td class="gt_row gt_left">417</td>
<td class="gt_row gt_left">Oil and fats</td>
<td class="gt_row gt_right">57.0%</td>
<td class="gt_row gt_right">53.2%</td>
<td class="gt_row gt_right">60.7%</td></tr>
    <tr><td class="gt_row gt_left">416</td>
<td class="gt_row gt_left">Milk products</td>
<td class="gt_row gt_right">54.1%</td>
<td class="gt_row gt_right">50.6%</td>
<td class="gt_row gt_right">57.7%</td></tr>
    <tr><td class="gt_row gt_left">411</td>
<td class="gt_row gt_left">Domesticated meat</td>
<td class="gt_row gt_right">53.9%</td>
<td class="gt_row gt_right">50.5%</td>
<td class="gt_row gt_right">57.2%</td></tr>
    <tr><td class="gt_row gt_left">419</td>
<td class="gt_row gt_left">Spices/condiments</td>
<td class="gt_row gt_right">50.6%</td>
<td class="gt_row gt_right">47.2%</td>
<td class="gt_row gt_right">54.1%</td></tr>
    <tr><td class="gt_row gt_left">415</td>
<td class="gt_row gt_left">Legumes</td>
<td class="gt_row gt_right">49.3%</td>
<td class="gt_row gt_right">45.9%</td>
<td class="gt_row gt_right">52.7%</td></tr>
    <tr><td class="gt_row gt_left">410</td>
<td class="gt_row gt_left">Organ meat</td>
<td class="gt_row gt_right">43.0%</td>
<td class="gt_row gt_right">39.2%</td>
<td class="gt_row gt_right">46.8%</td></tr>
    <tr><td class="gt_row gt_left">412</td>
<td class="gt_row gt_left">Bush meat</td>
<td class="gt_row gt_right">41.4%</td>
<td class="gt_row gt_right">38.3%</td>
<td class="gt_row gt_right">44.5%</td></tr>
    <tr><td class="gt_row gt_left">405</td>
<td class="gt_row gt_left">Vitamin A vegetables</td>
<td class="gt_row gt_right">41.2%</td>
<td class="gt_row gt_right">37.5%</td>
<td class="gt_row gt_right">44.8%</td></tr>
    <tr><td class="gt_row gt_left">413</td>
<td class="gt_row gt_left">Eggs</td>
<td class="gt_row gt_right">40.4%</td>
<td class="gt_row gt_right">37.1%</td>
<td class="gt_row gt_right">43.7%</td></tr>
    <tr><td class="gt_row gt_left">407</td>
<td class="gt_row gt_left">Other vegetables</td>
<td class="gt_row gt_right">34.8%</td>
<td class="gt_row gt_right">31.7%</td>
<td class="gt_row gt_right">38.0%</td></tr>
    <tr><td class="gt_row gt_left">418</td>
<td class="gt_row gt_left">Sweets</td>
<td class="gt_row gt_right">33.3%</td>
<td class="gt_row gt_right">30.2%</td>
<td class="gt_row gt_right">36.4%</td></tr>
    <tr><td class="gt_row gt_left">409</td>
<td class="gt_row gt_left">Other fruits</td>
<td class="gt_row gt_right">32.9%</td>
<td class="gt_row gt_right">29.1%</td>
<td class="gt_row gt_right">36.7%</td></tr>
    <tr><td class="gt_row gt_left">404</td>
<td class="gt_row gt_left">Roots/tubers</td>
<td class="gt_row gt_right">26.0%</td>
<td class="gt_row gt_right">23.1%</td>
<td class="gt_row gt_right">28.9%</td></tr>
    <tr><td class="gt_row gt_left">408</td>
<td class="gt_row gt_left">Vitamin A fruits</td>
<td class="gt_row gt_right">19.1%</td>
<td class="gt_row gt_right">16.6%</td>
<td class="gt_row gt_right">21.5%</td></tr>
  </tbody>
  
  
</table>
</div>
```
:::
:::

## Dietary diversity by county

::: {.cell hash='South-Sudan-resilience---frequencies_cache/html/unnamed-chunk-40_9acc88fb0ba8ed52eca0cfe94953b285'}

```{.r .cell-code}
q403_cnty <- svy_disag(svyrdat, county, q_403, "403","Cereals")
q404_cnty <- svy_disag(svyrdat, county, q_404, "404","Roots/tubers")
q405_cnty <- svy_disag(svyrdat, county, q_405, "405","Vitamin A vegetables")
q406_cnty <- svy_disag(svyrdat, county, q_406, "406","Leafy greens")
q407_cnty <- svy_disag(svyrdat, county, q_407, "407","Other vegetables")
q408_cnty <- svy_disag(svyrdat, county, q_408, "408","Vitamin A fruits")
q409_cnty <- svy_disag(svyrdat, county, q_409, "409","Other fruits")
q410_cnty <- svy_disag(svyrdat, county, q_410, "410","Organ meat")
q411_cnty <- svy_disag(svyrdat, county, q_411, "411","Domesticated meat")
q412_cnty <- svy_disag(svyrdat, county, q_412, "412","Bush meat")
q413_cnty <- svy_disag(svyrdat, county, q_413, "413","Eggs")
q414_cnty <- svy_disag(svyrdat, county, q_414, "414","Fish")
q415_cnty <- svy_disag(svyrdat, county, q_415, "415","Legumes")
q416_cnty <- svy_disag(svyrdat, county, q_416, "416","Milk products")
q417_cnty <- svy_disag(svyrdat, county, q_417, "417","Oil and fats")
q418_cnty <- svy_disag(svyrdat, county, q_418, "418","Sweets")
q419_cnty <- svy_disag(svyrdat, county, q_419, "419","Spices/condiments")

diet_cnty <- bind_rows(q403_cnty,
                       q404_cnty,
                       q405_cnty,
                       q406_cnty,
                       q407_cnty,
                       q408_cnty,
                       q409_cnty,
                       q410_cnty,
                       q411_cnty,
                       q412_cnty,
                       q413_cnty,
                       q414_cnty,
                       q415_cnty,
                       q416_cnty,
                       q417_cnty,
                       q418_cnty,
                       q419_cnty)

write_csv(diet_cnty, here("output/tables/food insecurity/diet items by county.csv"))

# Object diet_cnty_obj is the object of "diet items by
# county.csv"
```
:::

::: {.cell hash='South-Sudan-resilience---frequencies_cache/html/unnamed-chunk-42_25a2692b6e17ae136e5f978940ff9d98'}

```{.r .cell-code}
# Object diet_cnty_obj is the object of "diet items by county.csv"

diet_cnty_obj <- read_csv(here("output/tables/food insecurity/diet items by county.csv")) %>% 
  select(county, label, Value, lower, upper)

data_diet_cnty_obj <- SharedData$new(diet_cnty_obj)
```
:::

::: {.cell hash='South-Sudan-resilience---frequencies_cache/html/unnamed-chunk-44_1fadac5bf11765827883d78336df2601'}

```{.r .cell-code}
bscols(
  widths = c(3, 9)
  , list(filter_select("county"
                       , "County"
                       , data_diet_cnty_obj
                       , ~county)
         ,filter_select("label"
                       , "Food Item"
                       , data_diet_cnty_obj
                       , ~label))
  , reactable(data_diet_cnty_obj, showPageSizeOptions = T, highlight = T, columns = list(
    county = colDef(name = "County")
    , label = colDef(name = "Food Item"
                     , minWidth = 150)
    , Value = colDef(name = "Percent"
                     , format = colFormat(percent = T
                                          , digits = 1))
    , lower = colDef(name = "Lower"
                     , format = colFormat(percent = T
                                          , digits = 1))
    , upper = colDef(name = "Upper"
                     , format = colFormat(percent = T
                                          , digits = 1))
  )))
```

::: {.cell-output-display}
```{=html}
<div class="container-fluid crosstalk-bscols">
<div class="row">
<div class="col-xs-3">
<div id="county" class="form-group crosstalk-input-select crosstalk-input">
<label class="control-label" for="county">County</label>
<div>
<select multiple></select>
<script type="application/json" data-for="county">{
  "items": {
    "value": ["Akobo", "Baliet", "Budi", "Duk", "Jur River", "Kapoeta North", "Leer", "Mayendit", "Paynijar", "Pibor", "Ulang", "Uror", "Wau"],
    "label": ["Akobo", "Baliet", "Budi", "Duk", "Jur River", "Kapoeta North", "Leer", "Mayendit", "Paynijar", "Pibor", "Ulang", "Uror", "Wau"]
  },
  "map": {
    "Akobo": ["1", "14", "27", "40", "53", "66", "79", "92", "105", "118", "131", "144", "157", "170", "183", "196", "209"],
    "Baliet": ["2", "15", "28", "41", "54", "67", "80", "93", "106", "119", "132", "145", "158", "171", "184", "197", "210"],
    "Budi": ["3", "16", "29", "42", "55", "68", "81", "94", "107", "120", "133", "146", "159", "172", "185", "198", "211"],
    "Duk": ["4", "17", "30", "43", "56", "69", "82", "95", "108", "121", "134", "147", "160", "173", "186", "199", "212"],
    "Jur River": ["5", "18", "31", "44", "57", "70", "83", "96", "109", "122", "135", "148", "161", "174", "187", "200", "213"],
    "Kapoeta North": ["6", "19", "32", "45", "58", "71", "84", "97", "110", "123", "136", "149", "162", "175", "188", "201", "214"],
    "Leer": ["7", "20", "33", "46", "59", "72", "85", "98", "111", "124", "137", "150", "163", "176", "189", "202", "215"],
    "Mayendit": ["8", "21", "34", "47", "60", "73", "86", "99", "112", "125", "138", "151", "164", "177", "190", "203", "216"],
    "Paynijar": ["9", "22", "35", "48", "61", "74", "87", "100", "113", "126", "139", "152", "165", "178", "191", "204", "217"],
    "Pibor": ["10", "23", "36", "49", "62", "75", "88", "101", "114", "127", "140", "153", "166", "179", "192", "205", "218"],
    "Ulang": ["11", "24", "37", "50", "63", "76", "89", "102", "115", "128", "141", "154", "167", "180", "193", "206", "219"],
    "Uror": ["12", "25", "38", "51", "64", "77", "90", "103", "116", "129", "142", "155", "168", "181", "194", "207", "220"],
    "Wau": ["13", "26", "39", "52", "65", "78", "91", "104", "117", "130", "143", "156", "169", "182", "195", "208", "221"]
  },
  "group": ["SharedDatad9be086f"]
}</script>
</div>
</div>
<div id="label" class="form-group crosstalk-input-select crosstalk-input">
<label class="control-label" for="label">Food Item</label>
<div>
<select multiple></select>
<script type="application/json" data-for="label">{
  "items": {
    "value": ["Bush meat", "Cereals", "Domesticated meat", "Eggs", "Fish", "Leafy greens", "Legumes", "Milk products", "Oil and fats", "Organ meat", "Other fruits", "Other vegetables", "Roots/tubers", "Spices/condiments", "Sweets", "Vitamin A fruits", "Vitamin A vegetables"],
    "label": ["Bush meat", "Cereals", "Domesticated meat", "Eggs", "Fish", "Leafy greens", "Legumes", "Milk products", "Oil and fats", "Organ meat", "Other fruits", "Other vegetables", "Roots/tubers", "Spices/condiments", "Sweets", "Vitamin A fruits", "Vitamin A vegetables"]
  },
  "map": {
    "Bush meat": ["118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128", "129", "130"],
    "Cereals": ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13"],
    "Domesticated meat": ["105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117"],
    "Eggs": ["131", "132", "133", "134", "135", "136", "137", "138", "139", "140", "141", "142", "143"],
    "Fish": ["144", "145", "146", "147", "148", "149", "150", "151", "152", "153", "154", "155", "156"],
    "Leafy greens": ["40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52"],
    "Legumes": ["157", "158", "159", "160", "161", "162", "163", "164", "165", "166", "167", "168", "169"],
    "Milk products": ["170", "171", "172", "173", "174", "175", "176", "177", "178", "179", "180", "181", "182"],
    "Oil and fats": ["183", "184", "185", "186", "187", "188", "189", "190", "191", "192", "193", "194", "195"],
    "Organ meat": ["92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104"],
    "Other fruits": ["79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91"],
    "Other vegetables": ["53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65"],
    "Roots/tubers": ["14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26"],
    "Spices/condiments": ["209", "210", "211", "212", "213", "214", "215", "216", "217", "218", "219", "220", "221"],
    "Sweets": ["196", "197", "198", "199", "200", "201", "202", "203", "204", "205", "206", "207", "208"],
    "Vitamin A fruits": ["66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78"],
    "Vitamin A vegetables": ["27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39"]
  },
  "group": ["SharedDatad9be086f"]
}</script>
</div>
</div>
</div>
<div class="col-xs-9">
<div id="htmlwidget-f5573b8e9333d7d9be08" class="reactable html-widget" style="width:auto;height:auto;"></div>
<script type="application/json" data-for="htmlwidget-f5573b8e9333d7d9be08">{"x":{"tag":{"name":"Reactable","attribs":{"data":{"county":["Akobo","Baliet","Budi","Duk","Jur River","Kapoeta North","Leer","Mayendit","Paynijar","Pibor","Ulang","Uror","Wau","Akobo","Baliet","Budi","Duk","Jur River","Kapoeta North","Leer","Mayendit","Paynijar","Pibor","Ulang","Uror","Wau","Akobo","Baliet","Budi","Duk","Jur River","Kapoeta North","Leer","Mayendit","Paynijar","Pibor","Ulang","Uror","Wau","Akobo","Baliet","Budi","Duk","Jur River","Kapoeta North","Leer","Mayendit","Paynijar","Pibor","Ulang","Uror","Wau","Akobo","Baliet","Budi","Duk","Jur River","Kapoeta North","Leer","Mayendit","Paynijar","Pibor","Ulang","Uror","Wau","Akobo","Baliet","Budi","Duk","Jur River","Kapoeta North","Leer","Mayendit","Paynijar","Pibor","Ulang","Uror","Wau","Akobo","Baliet","Budi","Duk","Jur River","Kapoeta North","Leer","Mayendit","Paynijar","Pibor","Ulang","Uror","Wau","Akobo","Baliet","Budi","Duk","Jur River","Kapoeta North","Leer","Mayendit","Paynijar","Pibor","Ulang","Uror","Wau","Akobo","Baliet","Budi","Duk","Jur River","Kapoeta North","Leer","Mayendit","Paynijar","Pibor","Ulang","Uror","Wau","Akobo","Baliet","Budi","Duk","Jur River","Kapoeta North","Leer","Mayendit","Paynijar","Pibor","Ulang","Uror","Wau","Akobo","Baliet","Budi","Duk","Jur River","Kapoeta North","Leer","Mayendit","Paynijar","Pibor","Ulang","Uror","Wau","Akobo","Baliet","Budi","Duk","Jur River","Kapoeta North","Leer","Mayendit","Paynijar","Pibor","Ulang","Uror","Wau","Akobo","Baliet","Budi","Duk","Jur River","Kapoeta North","Leer","Mayendit","Paynijar","Pibor","Ulang","Uror","Wau","Akobo","Baliet","Budi","Duk","Jur River","Kapoeta North","Leer","Mayendit","Paynijar","Pibor","Ulang","Uror","Wau","Akobo","Baliet","Budi","Duk","Jur River","Kapoeta North","Leer","Mayendit","Paynijar","Pibor","Ulang","Uror","Wau","Akobo","Baliet","Budi","Duk","Jur River","Kapoeta North","Leer","Mayendit","Paynijar","Pibor","Ulang","Uror","Wau","Akobo","Baliet","Budi","Duk","Jur River","Kapoeta North","Leer","Mayendit","Paynijar","Pibor","Ulang","Uror","Wau"],"label":["Cereals","Cereals","Cereals","Cereals","Cereals","Cereals","Cereals","Cereals","Cereals","Cereals","Cereals","Cereals","Cereals","Roots/tubers","Roots/tubers","Roots/tubers","Roots/tubers","Roots/tubers","Roots/tubers","Roots/tubers","Roots/tubers","Roots/tubers","Roots/tubers","Roots/tubers","Roots/tubers","Roots/tubers","Vitamin A vegetables","Vitamin A vegetables","Vitamin A vegetables","Vitamin A vegetables","Vitamin A vegetables","Vitamin A vegetables","Vitamin A vegetables","Vitamin A vegetables","Vitamin A vegetables","Vitamin A vegetables","Vitamin A vegetables","Vitamin A vegetables","Vitamin A vegetables","Leafy greens","Leafy greens","Leafy greens","Leafy greens","Leafy greens","Leafy greens","Leafy greens","Leafy greens","Leafy greens","Leafy greens","Leafy greens","Leafy greens","Leafy greens","Other vegetables","Other vegetables","Other vegetables","Other vegetables","Other vegetables","Other vegetables","Other vegetables","Other vegetables","Other vegetables","Other vegetables","Other vegetables","Other vegetables","Other vegetables","Vitamin A fruits","Vitamin A fruits","Vitamin A fruits","Vitamin A fruits","Vitamin A fruits","Vitamin A fruits","Vitamin A fruits","Vitamin A fruits","Vitamin A fruits","Vitamin A fruits","Vitamin A fruits","Vitamin A fruits","Vitamin A fruits","Other fruits","Other fruits","Other fruits","Other fruits","Other fruits","Other fruits","Other fruits","Other fruits","Other fruits","Other fruits","Other fruits","Other fruits","Other fruits","Organ meat","Organ meat","Organ meat","Organ meat","Organ meat","Organ meat","Organ meat","Organ meat","Organ meat","Organ meat","Organ meat","Organ meat","Organ meat","Domesticated meat","Domesticated meat","Domesticated meat","Domesticated meat","Domesticated meat","Domesticated meat","Domesticated meat","Domesticated meat","Domesticated meat","Domesticated meat","Domesticated meat","Domesticated meat","Domesticated meat","Bush meat","Bush meat","Bush meat","Bush meat","Bush meat","Bush meat","Bush meat","Bush meat","Bush meat","Bush meat","Bush meat","Bush meat","Bush meat","Eggs","Eggs","Eggs","Eggs","Eggs","Eggs","Eggs","Eggs","Eggs","Eggs","Eggs","Eggs","Eggs","Fish","Fish","Fish","Fish","Fish","Fish","Fish","Fish","Fish","Fish","Fish","Fish","Fish","Legumes","Legumes","Legumes","Legumes","Legumes","Legumes","Legumes","Legumes","Legumes","Legumes","Legumes","Legumes","Legumes","Milk products","Milk products","Milk products","Milk products","Milk products","Milk products","Milk products","Milk products","Milk products","Milk products","Milk products","Milk products","Milk products","Oil and fats","Oil and fats","Oil and fats","Oil and fats","Oil and fats","Oil and fats","Oil and fats","Oil and fats","Oil and fats","Oil and fats","Oil and fats","Oil and fats","Oil and fats","Sweets","Sweets","Sweets","Sweets","Sweets","Sweets","Sweets","Sweets","Sweets","Sweets","Sweets","Sweets","Sweets","Spices/condiments","Spices/condiments","Spices/condiments","Spices/condiments","Spices/condiments","Spices/condiments","Spices/condiments","Spices/condiments","Spices/condiments","Spices/condiments","Spices/condiments","Spices/condiments","Spices/condiments"],"Value":[0.978125171418328,0.89336102270685,0.888795004538648,0.913021968726198,0.676345119937072,0.544103229718832,0.959513622585461,0.901244172755114,0.795913576327337,0.927704264319757,0.733455772188694,0.83543301851279,0.870947811648255,0.0283072162086851,0.119342943279535,0.195717820942229,0.107878477594971,0.422556543220191,0.246316319517065,0.234170327637527,0.160359719085319,0.31225560200906,0.453866946049917,0.196650433076648,0.0835146351422772,0.552350683461225,0.0897031321459052,0.431598068863926,0.0850597148917146,0.245008281114278,0.597741420978308,0.370350456303638,0.624032380657703,0.447673196742659,0.488354790448894,0.686074315885479,0.443095958498464,0.244391868828125,0.561221672491463,0.646029476752674,0.376117589822923,0.818200747900623,0.572138616444796,0.479040136230944,0.801313215024868,0.811061702643857,0.668638803820106,0.600434932490751,0.703764483293686,0.853564059196006,0.627867877882137,0.603792524100569,0.437499361674649,0.355113285228121,0.241788373313843,0.512580233029629,0.231413836486853,0.29766354255503,0.491844003939389,0.572346061624285,0.49297069474963,0.390517171816466,0.433298813530712,0.133199939166937,0.602653566700812,0.0863647417046168,0.251356720172987,0.0658448889967359,0.225818989992789,0.224615583327081,0.369230713105013,0.300503387276463,0.152998782112693,0.306676108159545,0.25426322317416,0.173317422226378,0.0605796158030198,0.297117273857243,0.0571128806482831,0.267763079414901,0.111610614788222,0.319181641178699,0.135184299409882,0.637120150236686,0.177922307349931,0.073398182873697,0.210352309532444,0.894886647763921,0.0972134717522135,0.0703708604796717,0.221342989255135,0.184939510740778,0.229035332047879,0.0833042945117223,0.566988401249528,0.138310879338173,0.72864449131379,0.238003178382706,0.200290136586753,0.245461891324367,0.908841475188022,0.3000558923002,0.297792857589275,0.327214139093876,0.356946474482625,0.461039467183906,0.123068155618023,0.679634720801651,0.311060374177034,0.634606664455233,0.42243869298184,0.346646940751007,0.329901352604382,0.881605134155503,0.389899420856683,0.542410434720947,0.468593547849239,0.517178882853487,0.360081257632155,0.100495233116275,0.636299899606099,0.168532769561064,0.531569177985882,0.213399140023606,0.138426959199194,0.228402678638962,0.78517293339097,0.239802201682178,0.344144758244394,0.190516688402831,0.260800003770855,0.514661484036758,0.0453721878307263,0.665651904153524,0.410655163624348,0.593043588213232,0.433723939436253,0.476563822395727,0.489440838261181,0.642263699537008,0.339873422023137,0.281584471056935,0.237777791153703,0.85478572825298,0.589548358286696,0.0182963872882468,0.782961072680691,0.424006425908778,0.27365210951672,0.882072036006617,0.862067887271353,0.70472897572753,0.912703676202371,0.893980725482206,0.513086027967815,0.416738674187883,0.421073701181794,0.313095344311381,0.238552839224085,0.459732250689254,0.639850201279064,0.414701519595231,0.550030712384296,0.54174488096737,0.517723048392705,0.810613614416227,0.348225055377979,0.317317829447498,0.531712971443251,0.45853947925444,0.359484805078138,0.156560971307733,0.373501664875453,0.199605899185345,0.898525839512425,0.210638121314136,0.30985781173977,0.294805580221899,0.831776098384049,0.608468078772253,0.69058509804779,0.194774809618417,0.636030914894182,0.310369494006921,0.398243295420805,0.499038010156515,0.260317978881197,0.720930645445818,0.581764213311123,0.50338828173995,0.445112669041387,0.884487783850162,0.577464042351791,0.465786960263782,0.4205750960853,0.367807424016315,0.373860635164159,0.0982248954057334,0.2284685956559,0.38442121835568,0.289074379741426,0.291468552265274,0.418089681764314,0.437117710393568,0.607723145244836,0.216774541183202,0.0808705351413708,0.508011567262141,0.606010899260242,0.61957674879637,0.776598294688634,0.440896201659235,0.329338143076123,0.35834349077362,0.326349555005639,0.449786982052339,0.35511620716535,0.724748139447282,0.40992534834426,0.316378462507206,0.53231040375235],"lower":[0.963207350568141,0.804539211711761,0.829545920815746,0.821998021652121,0.610067975672343,0.475247433599488,0.943698941207195,0.86574473210055,0.671633608728459,0.864235457831101,0.573674352586888,0.776116805038792,0.813741468102365,0.0136501638904498,0.0546499309482482,0.119023520380027,0.0446749878096276,0.345920475541092,0.164607915469161,0.184560389095411,0.0796713623273723,0.173581706300841,0.373756601144401,0.0781016931763741,0.0374739720601699,0.424609507610246,0.0514603861953782,0.299902719394385,0.0399377732993432,0.138446128307006,0.548970024347233,0.269155951311551,0.593915658765549,0.3671861971256,0.351799908629552,0.617803665990459,0.290060360863902,0.150556898876515,0.436134673195925,0.536057426621462,0.187159297252717,0.718191292502443,0.41623572960838,0.424964732601615,0.736930788719883,0.746542939310009,0.606284663335856,0.464009299375974,0.639892636300733,0.774923263821363,0.533486199275415,0.508804855833557,0.329073433880857,0.187572939490132,0.140003334803427,0.36498825972836,0.180098122905915,0.197643605935805,0.427818793319223,0.491486487870171,0.349166075639854,0.319424886362837,0.254779585784728,0.0692820727320897,0.47413612336199,0.0445194935853822,0.137541928003995,0.0264250359577908,0.112533236425939,0.187381534930713,0.240642830452593,0.245453002141219,0.111682469727717,0.176255457197011,0.187853725310478,0.0491069270918907,0.0273713575719672,0.203066049170011,0.0279524219990724,0.148070166007812,0.0697718708268888,0.193797896420391,0.0967568335873589,0.567557483152715,0.110705405214884,0.041640659634988,0.0949224406472237,0.819605160442538,0.0144960261246068,0.0146393300071338,0.14332631831954,0.114110186234027,0.127277930050638,0.0365624619328428,0.428590059301545,0.104693197213645,0.661315413606456,0.193972025542687,0.16090468453994,0.129902087884516,0.859847407679703,0.163708410058965,0.203293059441432,0.241177950840632,0.272346815938351,0.317692188074168,0.0534029176624473,0.544700772722132,0.248532352187763,0.582769403940894,0.360318854913369,0.296226970755163,0.212218304460111,0.841887791692945,0.229015071190204,0.458857717181765,0.358620344960511,0.436382595170038,0.179552743882569,0.0611346515647715,0.486198142607675,0.1348206020215,0.402347101019551,0.165311069445388,0.0846327218038764,0.114136847058832,0.745774184131164,0.108802038535686,0.27227704550171,0.121158819771327,0.16474800108331,0.410134494921607,0.0189674927341604,0.538677203387413,0.307443336785781,0.529448415801662,0.379772428161994,0.402992524918062,0.362677373349782,0.573189534657369,0.182290897284137,0.192171090581175,0.159989828326021,0.782528895439078,0.440502062940679,0.00456175924479332,0.681689360802651,0.366283280383274,0.174306776340343,0.828286638405594,0.816937813671708,0.586725888861786,0.850013757168997,0.848992916554144,0.407745336108729,0.306510399657,0.32399744862627,0.223289969280277,0.178325250203582,0.312365054741054,0.594267455116472,0.319580356385964,0.486395349085294,0.444645761355003,0.392850687051232,0.753932922728525,0.204887289199791,0.231995154530255,0.423243145867927,0.371666289805415,0.250635799144163,0.0742337681216793,0.240048109916289,0.155541883557353,0.853256311985401,0.155704904269729,0.247209844978651,0.179719538905676,0.761661715108074,0.48023729101382,0.625003354032505,0.112615848396604,0.530054989463826,0.186502122828498,0.269876463680116,0.323312107205951,0.218760941834482,0.660619602689714,0.521400341921703,0.428093740250219,0.291445986576708,0.830266740371311,0.388835053407891,0.366754855888635,0.295937441882338,0.263914537228407,0.23780884463598,0.0591206244503902,0.137891857592275,0.346974413911123,0.178929833201024,0.237742455594687,0.322934438681128,0.304796002082091,0.53171779073992,0.109101248582339,0.0354613617547733,0.385620913076487,0.505377345400902,0.464719675054228,0.717272634198254,0.26657433550529,0.267596486919456,0.23162889083615,0.289654804329763,0.372039762369303,0.22806448708191,0.65383659872953,0.247778202455496,0.23079279275264,0.425155966762988],"upper":[0.993042992268515,0.982182833701938,0.948044088261551,1.00404591580027,0.742622264201802,0.612959025838175,0.975328303963727,0.936743613409677,0.920193543926215,0.991173070808412,0.8932371917905,0.894749231986789,0.928154155194145,0.0429642685269204,0.184035955610823,0.272412121504431,0.171081967380313,0.49919261089929,0.328024723564969,0.283780266179643,0.241048075843265,0.450929497717278,0.533977290955433,0.315199172976922,0.129555298224385,0.680091859312203,0.127945878096432,0.563293418333468,0.130181656484086,0.351570433921549,0.646512817609383,0.471544961295724,0.654149102549856,0.528160196359718,0.624909672268237,0.754344965780499,0.596131556133026,0.338226838779736,0.686308671787,0.756001526883885,0.565075882393129,0.918210203298802,0.728041503281212,0.533115539860273,0.865695641329853,0.875580465977705,0.730992944304357,0.736860565605527,0.767636330286638,0.932204854570648,0.722249556488858,0.69878019236758,0.545925289468441,0.522653630966109,0.343573411824259,0.660172206330899,0.28272955006779,0.397683479174256,0.555869214559556,0.653205635378399,0.636775313859405,0.461609457270095,0.611818041276696,0.197117805601783,0.731171010039635,0.128209989823851,0.365171512341979,0.105264742035681,0.339104743559638,0.261849631723449,0.497818595757433,0.355553772411708,0.194315094497668,0.437096759122079,0.320672721037841,0.297527917360866,0.0937878740340723,0.391168498544476,0.0862733392974938,0.387455992821991,0.153449358749556,0.444565385937008,0.173611765232405,0.706682817320658,0.245139209484979,0.105155706112406,0.325782178417664,0.970168135085305,0.17993091737982,0.12610239095221,0.29935966019073,0.255768835247529,0.33079273404512,0.130046127090602,0.705386743197511,0.171928561462701,0.795973569021123,0.282034331222725,0.239675588633566,0.361021694764218,0.957835542696341,0.436403374541435,0.392292655737118,0.413250327347119,0.441546133026898,0.604386746293644,0.192733393573598,0.814568668881169,0.373588396166305,0.686443924969571,0.484558531050312,0.397066910746851,0.447584400748653,0.92132247661806,0.550783770523162,0.625963152260129,0.578566750737967,0.597975170536936,0.540609771381741,0.139855814667778,0.786401656604524,0.202244937100628,0.660791254952213,0.261487210601824,0.192221196594511,0.342668510219091,0.824571682650777,0.370802364828671,0.416012470987079,0.259874557034335,0.3568520064584,0.619188473151909,0.0717768829272922,0.792626604919635,0.513866990462915,0.656638760624802,0.487675450710512,0.550135119873392,0.616204303172579,0.711337864416647,0.497455946762137,0.370997851532695,0.315565753981385,0.927042561066882,0.738594653632714,0.0320310153317002,0.884232784558731,0.481729571434282,0.372997442693098,0.935857433607641,0.907197960870998,0.822732062593273,0.975393595235745,0.938968534410268,0.618426719826901,0.526966948718766,0.518149953737318,0.402900719342484,0.298780428244589,0.607099446637454,0.685432947441656,0.509822682804498,0.613666075683299,0.638844000579736,0.642595409734178,0.86729430610393,0.491562821556168,0.402640504364742,0.640182797018575,0.545412668703466,0.468333811012113,0.238888174493787,0.506955219834618,0.243669914813338,0.943795367039449,0.265571338358543,0.37250577850089,0.409891621538121,0.901890481660023,0.736698866530686,0.756166842063074,0.276933770840229,0.742006840324537,0.434236865185345,0.526610127161495,0.674763913107079,0.301875015927912,0.781241688201921,0.642128084700543,0.578682823229682,0.598779351506066,0.938708827329013,0.766093031295691,0.564819064638929,0.545212750288262,0.471700310804223,0.509912425692338,0.137329166361077,0.319045333719526,0.421868022800236,0.399218926281828,0.345194648935861,0.5132449248475,0.569439418705045,0.683728499749751,0.324447833784065,0.126279708527968,0.630402221447795,0.706644453119582,0.774433822538512,0.835923955179013,0.61521806781318,0.391079799232791,0.48505809071109,0.363044305681515,0.527534201735375,0.482167927248789,0.795659680165034,0.572072494233025,0.401964132261773,0.639464840741712]},"columns":[{"accessor":"county","name":"County","type":"character"},{"accessor":"label","name":"Food Item","type":"character","minWidth":150},{"accessor":"Value","name":"Percent","type":"numeric","format":{"cell":{"digits":1,"percent":true},"aggregated":{"digits":1,"percent":true}}},{"accessor":"lower","name":"Lower","type":"numeric","format":{"cell":{"digits":1,"percent":true},"aggregated":{"digits":1,"percent":true}}},{"accessor":"upper","name":"Upper","type":"numeric","format":{"cell":{"digits":1,"percent":true},"aggregated":{"digits":1,"percent":true}}}],"defaultPageSize":10,"showPageSizeOptions":true,"pageSizeOptions":[10,25,50,100],"paginationType":"numbers","showPageInfo":true,"minRows":1,"highlight":true,"crosstalkKey":["1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30","31","32","33","34","35","36","37","38","39","40","41","42","43","44","45","46","47","48","49","50","51","52","53","54","55","56","57","58","59","60","61","62","63","64","65","66","67","68","69","70","71","72","73","74","75","76","77","78","79","80","81","82","83","84","85","86","87","88","89","90","91","92","93","94","95","96","97","98","99","100","101","102","103","104","105","106","107","108","109","110","111","112","113","114","115","116","117","118","119","120","121","122","123","124","125","126","127","128","129","130","131","132","133","134","135","136","137","138","139","140","141","142","143","144","145","146","147","148","149","150","151","152","153","154","155","156","157","158","159","160","161","162","163","164","165","166","167","168","169","170","171","172","173","174","175","176","177","178","179","180","181","182","183","184","185","186","187","188","189","190","191","192","193","194","195","196","197","198","199","200","201","202","203","204","205","206","207","208","209","210","211","212","213","214","215","216","217","218","219","220","221"],"crosstalkGroup":"SharedDatad9be086f","dataKey":"0665f686c6c45bc5fc95757aec5ea784","key":"0665f686c6c45bc5fc95757aec5ea784"},"children":[]},"class":"reactR_markup"},"evals":[],"jsHooks":[]}</script>
</div>
</div>
</div>
```
:::
:::

# Food insecurity

## Food insecure behavior in previous 12 months

::: {.cell hash='South-Sudan-resilience---frequencies_cache/html/unnamed-chunk-46_5706badab78a5e13542c9ba4bfdad8bc'}

```{.r .cell-code}
q422 <- svy_disag(svyrdat, "", q_422, "worried", "Worried about not enough to eat") %>%
  select(4,5,2,6,7)

#q422

q423 <- svy_disag(svyrdat, "", q_423, "unhealthy", "Unable to eat healthy") %>%
  select(4,5,2,6,7)

#q423

q424 <- svy_disag(svyrdat, "", q_424, "few_foods", "Ate few kinds of foods") %>%
  select(4,5,2,6,7)

#q424

q425 <- svy_disag(svyrdat, "", q_425, "skip", "Skipped a meal") %>%
  select(4,5,2,6,7)

#q425

q426 <- svy_disag(svyrdat, "", q_426, "ate_less", "Ate less than needed") %>%
  select(4,5,2,6,7)

#q426

q427 <- svy_disag(svyrdat, "", q_427, "no_food", "Did not have food") %>%
  select(4,5,2,6,7)

#q427

q428 <- svy_disag(svyrdat, "", q_428, "not_eat", "Did not eat") %>%
  select(4,5,2,6,7)

#q428

q429 <- svy_disag(svyrdat, "", q_429, "wholeday", "Went a day without eating") %>%
  select(4,5,2,6,7)

#q429

fies_items <- do.call(rbind,
                      list(q422,
                           q423,
                           q424,
                           q425,
                           q426,
                           q427,
                           q428,
                           q429))


#fies_items
```
:::

::: {.cell hash='South-Sudan-resilience---frequencies_cache/html/unnamed-chunk-48_ad79187a4d0a687e1d99feaecea835ee'}

```{.r .cell-code}
fies_items_gt <- fies_items %>%
  select(-1) %>%
  gt() %>%
  fmt_percent(2:4,
              decimals=1) %>%
  cols_label(label="In previous 12 months..",
             Value="Percent") %>%
  tab_source_note("Survey instrument items 422-429") #%>%
  #tab_source_note("Behavior in past 12 months")

fies_items_gt
```

::: {.cell-output-display}
```{=html}
<div id="eopipxfvkx" style="overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#eopipxfvkx .gt_table {
  display: table;
  border-collapse: collapse;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#eopipxfvkx .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#eopipxfvkx .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#eopipxfvkx .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#eopipxfvkx .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#eopipxfvkx .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#eopipxfvkx .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#eopipxfvkx .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#eopipxfvkx .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#eopipxfvkx .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#eopipxfvkx .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#eopipxfvkx .gt_group_heading {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
}

#eopipxfvkx .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#eopipxfvkx .gt_from_md > :first-child {
  margin-top: 0;
}

#eopipxfvkx .gt_from_md > :last-child {
  margin-bottom: 0;
}

#eopipxfvkx .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#eopipxfvkx .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
}

#eopipxfvkx .gt_stub_row_group {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
  vertical-align: top;
}

#eopipxfvkx .gt_row_group_first td {
  border-top-width: 2px;
}

#eopipxfvkx .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#eopipxfvkx .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #D3D3D3;
}

#eopipxfvkx .gt_first_summary_row.thick {
  border-top-width: 2px;
}

#eopipxfvkx .gt_last_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#eopipxfvkx .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#eopipxfvkx .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#eopipxfvkx .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#eopipxfvkx .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#eopipxfvkx .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#eopipxfvkx .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding-left: 4px;
  padding-right: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#eopipxfvkx .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#eopipxfvkx .gt_sourcenote {
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#eopipxfvkx .gt_left {
  text-align: left;
}

#eopipxfvkx .gt_center {
  text-align: center;
}

#eopipxfvkx .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#eopipxfvkx .gt_font_normal {
  font-weight: normal;
}

#eopipxfvkx .gt_font_bold {
  font-weight: bold;
}

#eopipxfvkx .gt_font_italic {
  font-style: italic;
}

#eopipxfvkx .gt_super {
  font-size: 65%;
}

#eopipxfvkx .gt_footnote_marks {
  font-style: italic;
  font-weight: normal;
  font-size: 75%;
  vertical-align: 0.4em;
}

#eopipxfvkx .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}

#eopipxfvkx .gt_slash_mark {
  font-size: 0.7em;
  line-height: 0.7em;
  vertical-align: 0.15em;
}

#eopipxfvkx .gt_fraction_numerator {
  font-size: 0.6em;
  line-height: 0.6em;
  vertical-align: 0.45em;
}

#eopipxfvkx .gt_fraction_denominator {
  font-size: 0.6em;
  line-height: 0.6em;
  vertical-align: -0.05em;
}
</style>
<table class="gt_table">
  
  <thead class="gt_col_headings">
    <tr>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">In previous 12 months..</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1">Percent</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1">lower</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1">upper</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><td class="gt_row gt_left">Worried about not enough to eat</td>
<td class="gt_row gt_right">94.7%</td>
<td class="gt_row gt_right">93.4%</td>
<td class="gt_row gt_right">96.0%</td></tr>
    <tr><td class="gt_row gt_left">Unable to eat healthy</td>
<td class="gt_row gt_right">94.8%</td>
<td class="gt_row gt_right">93.8%</td>
<td class="gt_row gt_right">95.9%</td></tr>
    <tr><td class="gt_row gt_left">Ate few kinds of foods</td>
<td class="gt_row gt_right">94.9%</td>
<td class="gt_row gt_right">93.7%</td>
<td class="gt_row gt_right">96.0%</td></tr>
    <tr><td class="gt_row gt_left">Skipped a meal</td>
<td class="gt_row gt_right">94.4%</td>
<td class="gt_row gt_right">93.2%</td>
<td class="gt_row gt_right">95.6%</td></tr>
    <tr><td class="gt_row gt_left">Ate less than needed</td>
<td class="gt_row gt_right">95.2%</td>
<td class="gt_row gt_right">94.2%</td>
<td class="gt_row gt_right">96.1%</td></tr>
    <tr><td class="gt_row gt_left">Did not have food</td>
<td class="gt_row gt_right">94.7%</td>
<td class="gt_row gt_right">93.6%</td>
<td class="gt_row gt_right">95.8%</td></tr>
    <tr><td class="gt_row gt_left">Did not eat</td>
<td class="gt_row gt_right">94.7%</td>
<td class="gt_row gt_right">93.7%</td>
<td class="gt_row gt_right">95.7%</td></tr>
    <tr><td class="gt_row gt_left">Went a day without eating</td>
<td class="gt_row gt_right">94.0%</td>
<td class="gt_row gt_right">92.8%</td>
<td class="gt_row gt_right">95.2%</td></tr>
  </tbody>
  <tfoot class="gt_sourcenotes">
    <tr>
      <td class="gt_sourcenote" colspan="4">Survey instrument items 422-429</td>
    </tr>
  </tfoot>
  
</table>
</div>
```
:::

```{.r .cell-code}
#gtsave(fies_items_gt, here("output/tables/food insecurity/fies items.rtf"))
```
:::

## Food insecure behavior in previous four weeks

::: {.cell hash='South-Sudan-resilience---frequencies_cache/html/unnamed-chunk-50_affc91982cd1dfa901e67901a1a016ff'}

```{.r .cell-code}
q430 <- svy_disag(svyrdat, "", q_430, "no_food", "No food in house") %>%
  select("In previous four weeks.."=5,Percent=2,6,7) %>%
  gt() %>%
  fmt_percent(2:4,
              decimals=1)

q430
```

::: {.cell-output-display}
```{=html}
<div id="gavzmjvbta" style="overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#gavzmjvbta .gt_table {
  display: table;
  border-collapse: collapse;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#gavzmjvbta .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#gavzmjvbta .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#gavzmjvbta .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#gavzmjvbta .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#gavzmjvbta .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#gavzmjvbta .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#gavzmjvbta .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#gavzmjvbta .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#gavzmjvbta .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#gavzmjvbta .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#gavzmjvbta .gt_group_heading {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
}

#gavzmjvbta .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#gavzmjvbta .gt_from_md > :first-child {
  margin-top: 0;
}

#gavzmjvbta .gt_from_md > :last-child {
  margin-bottom: 0;
}

#gavzmjvbta .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#gavzmjvbta .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
}

#gavzmjvbta .gt_stub_row_group {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
  vertical-align: top;
}

#gavzmjvbta .gt_row_group_first td {
  border-top-width: 2px;
}

#gavzmjvbta .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#gavzmjvbta .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #D3D3D3;
}

#gavzmjvbta .gt_first_summary_row.thick {
  border-top-width: 2px;
}

#gavzmjvbta .gt_last_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#gavzmjvbta .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#gavzmjvbta .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#gavzmjvbta .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#gavzmjvbta .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#gavzmjvbta .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#gavzmjvbta .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding-left: 4px;
  padding-right: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#gavzmjvbta .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#gavzmjvbta .gt_sourcenote {
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#gavzmjvbta .gt_left {
  text-align: left;
}

#gavzmjvbta .gt_center {
  text-align: center;
}

#gavzmjvbta .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#gavzmjvbta .gt_font_normal {
  font-weight: normal;
}

#gavzmjvbta .gt_font_bold {
  font-weight: bold;
}

#gavzmjvbta .gt_font_italic {
  font-style: italic;
}

#gavzmjvbta .gt_super {
  font-size: 65%;
}

#gavzmjvbta .gt_footnote_marks {
  font-style: italic;
  font-weight: normal;
  font-size: 75%;
  vertical-align: 0.4em;
}

#gavzmjvbta .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}

#gavzmjvbta .gt_slash_mark {
  font-size: 0.7em;
  line-height: 0.7em;
  vertical-align: 0.15em;
}

#gavzmjvbta .gt_fraction_numerator {
  font-size: 0.6em;
  line-height: 0.6em;
  vertical-align: 0.45em;
}

#gavzmjvbta .gt_fraction_denominator {
  font-size: 0.6em;
  line-height: 0.6em;
  vertical-align: -0.05em;
}
</style>
<table class="gt_table">
  
  <thead class="gt_col_headings">
    <tr>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">In previous four weeks..</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1">Percent</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1">lower</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1">upper</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><td class="gt_row gt_left">No food in house</td>
<td class="gt_row gt_right">89.7%</td>
<td class="gt_row gt_right">88.0%</td>
<td class="gt_row gt_right">91.5%</td></tr>
  </tbody>
  
  
</table>
</div>
```
:::
:::

::: {.cell hash='South-Sudan-resilience---frequencies_cache/html/unnamed-chunk-52_9f827b797991c20fe67f82fe345ffc27'}

```{.r .cell-code}
# need to use survey package due to presence of not asked

q431 <- svytable(~q_431,
                     svydat,
                     Ntotal=T) %>%
  as.data.frame() %>%
  mutate(Response=c("Rarely (1-2 times)",
                    "Sometimes (3-10 times)",
                    "Often (More than 10 times)")) %>%
  select(3,Percent=2) %>%
  gt() %>%
  fmt_percent(2,
              decimals=1) %>%
  cols_label(Response=html("How often no food in house<br>in previous four weeks?"))

q431
```

::: {.cell-output-display}
```{=html}
<div id="xyvzpiutca" style="overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#xyvzpiutca .gt_table {
  display: table;
  border-collapse: collapse;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#xyvzpiutca .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#xyvzpiutca .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#xyvzpiutca .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#xyvzpiutca .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#xyvzpiutca .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#xyvzpiutca .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#xyvzpiutca .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#xyvzpiutca .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#xyvzpiutca .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#xyvzpiutca .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#xyvzpiutca .gt_group_heading {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
}

#xyvzpiutca .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#xyvzpiutca .gt_from_md > :first-child {
  margin-top: 0;
}

#xyvzpiutca .gt_from_md > :last-child {
  margin-bottom: 0;
}

#xyvzpiutca .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#xyvzpiutca .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
}

#xyvzpiutca .gt_stub_row_group {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
  vertical-align: top;
}

#xyvzpiutca .gt_row_group_first td {
  border-top-width: 2px;
}

#xyvzpiutca .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#xyvzpiutca .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #D3D3D3;
}

#xyvzpiutca .gt_first_summary_row.thick {
  border-top-width: 2px;
}

#xyvzpiutca .gt_last_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#xyvzpiutca .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#xyvzpiutca .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#xyvzpiutca .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#xyvzpiutca .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#xyvzpiutca .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#xyvzpiutca .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding-left: 4px;
  padding-right: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#xyvzpiutca .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#xyvzpiutca .gt_sourcenote {
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#xyvzpiutca .gt_left {
  text-align: left;
}

#xyvzpiutca .gt_center {
  text-align: center;
}

#xyvzpiutca .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#xyvzpiutca .gt_font_normal {
  font-weight: normal;
}

#xyvzpiutca .gt_font_bold {
  font-weight: bold;
}

#xyvzpiutca .gt_font_italic {
  font-style: italic;
}

#xyvzpiutca .gt_super {
  font-size: 65%;
}

#xyvzpiutca .gt_footnote_marks {
  font-style: italic;
  font-weight: normal;
  font-size: 75%;
  vertical-align: 0.4em;
}

#xyvzpiutca .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}

#xyvzpiutca .gt_slash_mark {
  font-size: 0.7em;
  line-height: 0.7em;
  vertical-align: 0.15em;
}

#xyvzpiutca .gt_fraction_numerator {
  font-size: 0.6em;
  line-height: 0.6em;
  vertical-align: 0.45em;
}

#xyvzpiutca .gt_fraction_denominator {
  font-size: 0.6em;
  line-height: 0.6em;
  vertical-align: -0.05em;
}
</style>
<table class="gt_table">
  
  <thead class="gt_col_headings">
    <tr>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">How often no food in house<br>in previous four weeks?</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1">Percent</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><td class="gt_row gt_left">Rarely (1-2 times)</td>
<td class="gt_row gt_right">51.9%</td></tr>
    <tr><td class="gt_row gt_left">Sometimes (3-10 times)</td>
<td class="gt_row gt_right">36.5%</td></tr>
    <tr><td class="gt_row gt_left">Often (More than 10 times)</td>
<td class="gt_row gt_right">11.7%</td></tr>
  </tbody>
  
  
</table>
</div>
```
:::
:::

::: {.cell hash='South-Sudan-resilience---frequencies_cache/html/unnamed-chunk-54_7d6ffaef876e7f9c709f11283c565541'}

```{.r .cell-code}
q432 <- svy_disag(svyrdat, "", q_432, "slept_hungry", "Went to bed hungry") %>%
  select(5,Percent=2,6,7) %>%
  gt() %>%
  fmt_percent(2:4,
              decimals=1) %>%
  cols_label(label="In the previous four weeks..")

q432
```

::: {.cell-output-display}
```{=html}
<div id="umvtorvmlb" style="overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#umvtorvmlb .gt_table {
  display: table;
  border-collapse: collapse;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#umvtorvmlb .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#umvtorvmlb .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#umvtorvmlb .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#umvtorvmlb .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#umvtorvmlb .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#umvtorvmlb .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#umvtorvmlb .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#umvtorvmlb .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#umvtorvmlb .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#umvtorvmlb .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#umvtorvmlb .gt_group_heading {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
}

#umvtorvmlb .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#umvtorvmlb .gt_from_md > :first-child {
  margin-top: 0;
}

#umvtorvmlb .gt_from_md > :last-child {
  margin-bottom: 0;
}

#umvtorvmlb .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#umvtorvmlb .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
}

#umvtorvmlb .gt_stub_row_group {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
  vertical-align: top;
}

#umvtorvmlb .gt_row_group_first td {
  border-top-width: 2px;
}

#umvtorvmlb .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#umvtorvmlb .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #D3D3D3;
}

#umvtorvmlb .gt_first_summary_row.thick {
  border-top-width: 2px;
}

#umvtorvmlb .gt_last_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#umvtorvmlb .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#umvtorvmlb .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#umvtorvmlb .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#umvtorvmlb .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#umvtorvmlb .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#umvtorvmlb .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding-left: 4px;
  padding-right: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#umvtorvmlb .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#umvtorvmlb .gt_sourcenote {
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#umvtorvmlb .gt_left {
  text-align: left;
}

#umvtorvmlb .gt_center {
  text-align: center;
}

#umvtorvmlb .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#umvtorvmlb .gt_font_normal {
  font-weight: normal;
}

#umvtorvmlb .gt_font_bold {
  font-weight: bold;
}

#umvtorvmlb .gt_font_italic {
  font-style: italic;
}

#umvtorvmlb .gt_super {
  font-size: 65%;
}

#umvtorvmlb .gt_footnote_marks {
  font-style: italic;
  font-weight: normal;
  font-size: 75%;
  vertical-align: 0.4em;
}

#umvtorvmlb .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}

#umvtorvmlb .gt_slash_mark {
  font-size: 0.7em;
  line-height: 0.7em;
  vertical-align: 0.15em;
}

#umvtorvmlb .gt_fraction_numerator {
  font-size: 0.6em;
  line-height: 0.6em;
  vertical-align: 0.45em;
}

#umvtorvmlb .gt_fraction_denominator {
  font-size: 0.6em;
  line-height: 0.6em;
  vertical-align: -0.05em;
}
</style>
<table class="gt_table">
  
  <thead class="gt_col_headings">
    <tr>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">In the previous four weeks..</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1">Percent</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1">lower</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1">upper</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><td class="gt_row gt_left">Went to bed hungry</td>
<td class="gt_row gt_right">88.1%</td>
<td class="gt_row gt_right">86.4%</td>
<td class="gt_row gt_right">89.9%</td></tr>
  </tbody>
  
  
</table>
</div>
```
:::
:::

::: {.cell hash='South-Sudan-resilience---frequencies_cache/html/unnamed-chunk-56_562d2274509f9be64d4515bde96c3284'}

```{.r .cell-code}
# need to use survey package due to presence of not asked

q433 <- svytable(~q_433,
                     svydat,
                     Ntotal=T) %>%
  as.data.frame() %>%
  mutate(Response=c("Rarely (1-2 times)",
                    "Sometimes (3-10 times)",
                    "Often (More than 10 times)")) %>%
  select(3,Percent=2) %>%
  gt() %>%
  fmt_percent(2,
              decimals=1) %>%
  cols_label(Response=html("How often went to bed<br>hungry in past four weeks?"))

q433
```

::: {.cell-output-display}
```{=html}
<div id="geaurraqsm" style="overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#geaurraqsm .gt_table {
  display: table;
  border-collapse: collapse;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#geaurraqsm .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#geaurraqsm .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#geaurraqsm .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#geaurraqsm .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#geaurraqsm .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#geaurraqsm .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#geaurraqsm .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#geaurraqsm .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#geaurraqsm .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#geaurraqsm .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#geaurraqsm .gt_group_heading {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
}

#geaurraqsm .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#geaurraqsm .gt_from_md > :first-child {
  margin-top: 0;
}

#geaurraqsm .gt_from_md > :last-child {
  margin-bottom: 0;
}

#geaurraqsm .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#geaurraqsm .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
}

#geaurraqsm .gt_stub_row_group {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
  vertical-align: top;
}

#geaurraqsm .gt_row_group_first td {
  border-top-width: 2px;
}

#geaurraqsm .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#geaurraqsm .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #D3D3D3;
}

#geaurraqsm .gt_first_summary_row.thick {
  border-top-width: 2px;
}

#geaurraqsm .gt_last_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#geaurraqsm .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#geaurraqsm .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#geaurraqsm .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#geaurraqsm .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#geaurraqsm .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#geaurraqsm .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding-left: 4px;
  padding-right: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#geaurraqsm .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#geaurraqsm .gt_sourcenote {
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#geaurraqsm .gt_left {
  text-align: left;
}

#geaurraqsm .gt_center {
  text-align: center;
}

#geaurraqsm .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#geaurraqsm .gt_font_normal {
  font-weight: normal;
}

#geaurraqsm .gt_font_bold {
  font-weight: bold;
}

#geaurraqsm .gt_font_italic {
  font-style: italic;
}

#geaurraqsm .gt_super {
  font-size: 65%;
}

#geaurraqsm .gt_footnote_marks {
  font-style: italic;
  font-weight: normal;
  font-size: 75%;
  vertical-align: 0.4em;
}

#geaurraqsm .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}

#geaurraqsm .gt_slash_mark {
  font-size: 0.7em;
  line-height: 0.7em;
  vertical-align: 0.15em;
}

#geaurraqsm .gt_fraction_numerator {
  font-size: 0.6em;
  line-height: 0.6em;
  vertical-align: 0.45em;
}

#geaurraqsm .gt_fraction_denominator {
  font-size: 0.6em;
  line-height: 0.6em;
  vertical-align: -0.05em;
}
</style>
<table class="gt_table">
  
  <thead class="gt_col_headings">
    <tr>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">How often went to bed<br>hungry in past four weeks?</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1">Percent</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><td class="gt_row gt_left">Rarely (1-2 times)</td>
<td class="gt_row gt_right">50.3%</td></tr>
    <tr><td class="gt_row gt_left">Sometimes (3-10 times)</td>
<td class="gt_row gt_right">37.2%</td></tr>
    <tr><td class="gt_row gt_left">Often (More than 10 times)</td>
<td class="gt_row gt_right">12.5%</td></tr>
  </tbody>
  
  
</table>
</div>
```
:::
:::

::: {.cell hash='South-Sudan-resilience---frequencies_cache/html/unnamed-chunk-58_8d491f6e6e471f494a4de30cfb9d43fc'}

```{.r .cell-code}
q434 <- svy_disag(svyrdat, "", q_434, "fast", "Went whole day without eating") %>%
  select(5,Percent=2,6,7) %>%
  gt() %>%
  fmt_percent(2:4,
              decimals=1) %>%
  cols_label(label="In the previous four weeks..")

q434
```

::: {.cell-output-display}
```{=html}
<div id="czyprdmwda" style="overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#czyprdmwda .gt_table {
  display: table;
  border-collapse: collapse;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#czyprdmwda .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#czyprdmwda .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#czyprdmwda .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#czyprdmwda .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#czyprdmwda .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#czyprdmwda .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#czyprdmwda .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#czyprdmwda .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#czyprdmwda .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#czyprdmwda .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#czyprdmwda .gt_group_heading {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
}

#czyprdmwda .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#czyprdmwda .gt_from_md > :first-child {
  margin-top: 0;
}

#czyprdmwda .gt_from_md > :last-child {
  margin-bottom: 0;
}

#czyprdmwda .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#czyprdmwda .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
}

#czyprdmwda .gt_stub_row_group {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
  vertical-align: top;
}

#czyprdmwda .gt_row_group_first td {
  border-top-width: 2px;
}

#czyprdmwda .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#czyprdmwda .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #D3D3D3;
}

#czyprdmwda .gt_first_summary_row.thick {
  border-top-width: 2px;
}

#czyprdmwda .gt_last_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#czyprdmwda .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#czyprdmwda .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#czyprdmwda .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#czyprdmwda .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#czyprdmwda .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#czyprdmwda .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding-left: 4px;
  padding-right: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#czyprdmwda .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#czyprdmwda .gt_sourcenote {
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#czyprdmwda .gt_left {
  text-align: left;
}

#czyprdmwda .gt_center {
  text-align: center;
}

#czyprdmwda .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#czyprdmwda .gt_font_normal {
  font-weight: normal;
}

#czyprdmwda .gt_font_bold {
  font-weight: bold;
}

#czyprdmwda .gt_font_italic {
  font-style: italic;
}

#czyprdmwda .gt_super {
  font-size: 65%;
}

#czyprdmwda .gt_footnote_marks {
  font-style: italic;
  font-weight: normal;
  font-size: 75%;
  vertical-align: 0.4em;
}

#czyprdmwda .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}

#czyprdmwda .gt_slash_mark {
  font-size: 0.7em;
  line-height: 0.7em;
  vertical-align: 0.15em;
}

#czyprdmwda .gt_fraction_numerator {
  font-size: 0.6em;
  line-height: 0.6em;
  vertical-align: 0.45em;
}

#czyprdmwda .gt_fraction_denominator {
  font-size: 0.6em;
  line-height: 0.6em;
  vertical-align: -0.05em;
}
</style>
<table class="gt_table">
  
  <thead class="gt_col_headings">
    <tr>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">In the previous four weeks..</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1">Percent</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1">lower</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1">upper</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><td class="gt_row gt_left">Went whole day without eating</td>
<td class="gt_row gt_right">85.2%</td>
<td class="gt_row gt_right">83.3%</td>
<td class="gt_row gt_right">87.1%</td></tr>
  </tbody>
  
  
</table>
</div>
```
:::
:::

::: {.cell hash='South-Sudan-resilience---frequencies_cache/html/unnamed-chunk-60_377dda69d8092075bde1da7ccb66f324'}

```{.r .cell-code}
# need to use survey package due to presence of not asked

q435 <- svytable(~q_435,
                     svydat,
                     Ntotal=T) %>%
  as.data.frame() %>%
  mutate(Response=c("Rarely (1-2 times)",
                    "Sometimes (3-10 times)",
                    "Often (More than 10 times)")) %>%
  select(3,Percent=2) %>%
  gt() %>%
  fmt_percent(2,
              decimals=1) %>%
  cols_label(Response=html("How often went a whole day<br>without eating in past four weeks?"))

q435
```

::: {.cell-output-display}
```{=html}
<div id="cehrdpcwho" style="overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#cehrdpcwho .gt_table {
  display: table;
  border-collapse: collapse;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#cehrdpcwho .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#cehrdpcwho .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#cehrdpcwho .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#cehrdpcwho .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#cehrdpcwho .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#cehrdpcwho .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#cehrdpcwho .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#cehrdpcwho .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#cehrdpcwho .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#cehrdpcwho .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#cehrdpcwho .gt_group_heading {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
}

#cehrdpcwho .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#cehrdpcwho .gt_from_md > :first-child {
  margin-top: 0;
}

#cehrdpcwho .gt_from_md > :last-child {
  margin-bottom: 0;
}

#cehrdpcwho .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#cehrdpcwho .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
}

#cehrdpcwho .gt_stub_row_group {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
  vertical-align: top;
}

#cehrdpcwho .gt_row_group_first td {
  border-top-width: 2px;
}

#cehrdpcwho .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#cehrdpcwho .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #D3D3D3;
}

#cehrdpcwho .gt_first_summary_row.thick {
  border-top-width: 2px;
}

#cehrdpcwho .gt_last_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#cehrdpcwho .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#cehrdpcwho .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#cehrdpcwho .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#cehrdpcwho .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#cehrdpcwho .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#cehrdpcwho .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding-left: 4px;
  padding-right: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#cehrdpcwho .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#cehrdpcwho .gt_sourcenote {
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#cehrdpcwho .gt_left {
  text-align: left;
}

#cehrdpcwho .gt_center {
  text-align: center;
}

#cehrdpcwho .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#cehrdpcwho .gt_font_normal {
  font-weight: normal;
}

#cehrdpcwho .gt_font_bold {
  font-weight: bold;
}

#cehrdpcwho .gt_font_italic {
  font-style: italic;
}

#cehrdpcwho .gt_super {
  font-size: 65%;
}

#cehrdpcwho .gt_footnote_marks {
  font-style: italic;
  font-weight: normal;
  font-size: 75%;
  vertical-align: 0.4em;
}

#cehrdpcwho .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}

#cehrdpcwho .gt_slash_mark {
  font-size: 0.7em;
  line-height: 0.7em;
  vertical-align: 0.15em;
}

#cehrdpcwho .gt_fraction_numerator {
  font-size: 0.6em;
  line-height: 0.6em;
  vertical-align: 0.45em;
}

#cehrdpcwho .gt_fraction_denominator {
  font-size: 0.6em;
  line-height: 0.6em;
  vertical-align: -0.05em;
}
</style>
<table class="gt_table">
  
  <thead class="gt_col_headings">
    <tr>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">How often went a whole day<br>without eating in past four weeks?</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1">Percent</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><td class="gt_row gt_left">Rarely (1-2 times)</td>
<td class="gt_row gt_right">51.4%</td></tr>
    <tr><td class="gt_row gt_left">Sometimes (3-10 times)</td>
<td class="gt_row gt_right">34.7%</td></tr>
    <tr><td class="gt_row gt_left">Often (More than 10 times)</td>
<td class="gt_row gt_right">13.9%</td></tr>
  </tbody>
  
  
</table>
</div>
```
:::
:::

# Household involvement in the community

## Community group participation

::: {.cell hash='South-Sudan-resilience---frequencies_cache/html/unnamed-chunk-62_4ce3b42cf2f9b2967568c8e19667e812'}

```{.r .cell-code}
grps_sum <- read_csv(here("output/tables/resilience/groups weighted.csv"))

grps_sum_gt <- grps_sum %>%
  gt()

grps_sum_gt
```

::: {.cell-output-display}
```{=html}
<div id="epztrfrhxl" style="overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#epztrfrhxl .gt_table {
  display: table;
  border-collapse: collapse;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#epztrfrhxl .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#epztrfrhxl .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#epztrfrhxl .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#epztrfrhxl .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#epztrfrhxl .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#epztrfrhxl .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#epztrfrhxl .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#epztrfrhxl .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#epztrfrhxl .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#epztrfrhxl .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#epztrfrhxl .gt_group_heading {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
}

#epztrfrhxl .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#epztrfrhxl .gt_from_md > :first-child {
  margin-top: 0;
}

#epztrfrhxl .gt_from_md > :last-child {
  margin-bottom: 0;
}

#epztrfrhxl .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#epztrfrhxl .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
}

#epztrfrhxl .gt_stub_row_group {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
  vertical-align: top;
}

#epztrfrhxl .gt_row_group_first td {
  border-top-width: 2px;
}

#epztrfrhxl .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#epztrfrhxl .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #D3D3D3;
}

#epztrfrhxl .gt_first_summary_row.thick {
  border-top-width: 2px;
}

#epztrfrhxl .gt_last_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#epztrfrhxl .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#epztrfrhxl .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#epztrfrhxl .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#epztrfrhxl .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#epztrfrhxl .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#epztrfrhxl .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding-left: 4px;
  padding-right: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#epztrfrhxl .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#epztrfrhxl .gt_sourcenote {
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#epztrfrhxl .gt_left {
  text-align: left;
}

#epztrfrhxl .gt_center {
  text-align: center;
}

#epztrfrhxl .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#epztrfrhxl .gt_font_normal {
  font-weight: normal;
}

#epztrfrhxl .gt_font_bold {
  font-weight: bold;
}

#epztrfrhxl .gt_font_italic {
  font-style: italic;
}

#epztrfrhxl .gt_super {
  font-size: 65%;
}

#epztrfrhxl .gt_footnote_marks {
  font-style: italic;
  font-weight: normal;
  font-size: 75%;
  vertical-align: 0.4em;
}

#epztrfrhxl .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}

#epztrfrhxl .gt_slash_mark {
  font-size: 0.7em;
  line-height: 0.7em;
  vertical-align: 0.15em;
}

#epztrfrhxl .gt_fraction_numerator {
  font-size: 0.6em;
  line-height: 0.6em;
  vertical-align: 0.45em;
}

#epztrfrhxl .gt_fraction_denominator {
  font-size: 0.6em;
  line-height: 0.6em;
  vertical-align: -0.05em;
}
</style>
<table class="gt_table">
  
  <thead class="gt_col_headings">
    <tr>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">variable</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">item</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">group</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1">percent</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1">se</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1">lower</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1">upper</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><td class="gt_row gt_left">grp_relig</td>
<td class="gt_row gt_left">q501g</td>
<td class="gt_row gt_left">Religious</td>
<td class="gt_row gt_right">0.6740</td>
<td class="gt_row gt_right">0.01973</td>
<td class="gt_row gt_right">0.6353</td>
<td class="gt_row gt_right">0.7126</td></tr>
    <tr><td class="gt_row gt_left">grp_youth</td>
<td class="gt_row gt_left">q501j</td>
<td class="gt_row gt_left">Youth</td>
<td class="gt_row gt_right">0.6286</td>
<td class="gt_row gt_right">0.01711</td>
<td class="gt_row gt_right">0.5950</td>
<td class="gt_row gt_right">0.6621</td></tr>
    <tr><td class="gt_row gt_left">grp_women</td>
<td class="gt_row gt_left">q501i</td>
<td class="gt_row gt_left">Women</td>
<td class="gt_row gt_right">0.6204</td>
<td class="gt_row gt_right">0.01858</td>
<td class="gt_row gt_right">0.5839</td>
<td class="gt_row gt_right">0.6568</td></tr>
    <tr><td class="gt_row gt_left">grp_herding</td>
<td class="gt_row gt_left">q501n</td>
<td class="gt_row gt_left">Cattle herding</td>
<td class="gt_row gt_right">0.5939</td>
<td class="gt_row gt_right">0.01837</td>
<td class="gt_row gt_right">0.5579</td>
<td class="gt_row gt_right">0.6299</td></tr>
    <tr><td class="gt_row gt_left">grp_cattleprotect</td>
<td class="gt_row gt_left">q501o</td>
<td class="gt_row gt_left">Cattle protection</td>
<td class="gt_row gt_right">0.5788</td>
<td class="gt_row gt_right">0.01846</td>
<td class="gt_row gt_right">0.5427</td>
<td class="gt_row gt_right">0.6150</td></tr>
    <tr><td class="gt_row gt_left">grp_mother</td>
<td class="gt_row gt_left">q501h</td>
<td class="gt_row gt_left">Mothers</td>
<td class="gt_row gt_right">0.5445</td>
<td class="gt_row gt_right">0.02088</td>
<td class="gt_row gt_right">0.5036</td>
<td class="gt_row gt_right">0.5855</td></tr>
    <tr><td class="gt_row gt_left">grp_animalherding</td>
<td class="gt_row gt_left">q501p</td>
<td class="gt_row gt_left">Small animal herding</td>
<td class="gt_row gt_right">0.4611</td>
<td class="gt_row gt_right">0.01806</td>
<td class="gt_row gt_right">0.4257</td>
<td class="gt_row gt_right">0.4965</td></tr>
    <tr><td class="gt_row gt_left">grp_land</td>
<td class="gt_row gt_left">q501b</td>
<td class="gt_row gt_left">Grazing land users</td>
<td class="gt_row gt_right">0.4018</td>
<td class="gt_row gt_right">0.02119</td>
<td class="gt_row gt_right">0.3603</td>
<td class="gt_row gt_right">0.4434</td></tr>
    <tr><td class="gt_row gt_left">grp_water</td>
<td class="gt_row gt_left">q501a</td>
<td class="gt_row gt_left">Water users</td>
<td class="gt_row gt_right">0.4004</td>
<td class="gt_row gt_right">0.01939</td>
<td class="gt_row gt_right">0.3624</td>
<td class="gt_row gt_right">0.4384</td></tr>
    <tr><td class="gt_row gt_left">grp_sports</td>
<td class="gt_row gt_left">q501k</td>
<td class="gt_row gt_left">Sports</td>
<td class="gt_row gt_right">0.3674</td>
<td class="gt_row gt_right">0.02061</td>
<td class="gt_row gt_right">0.3270</td>
<td class="gt_row gt_right">0.4078</td></tr>
    <tr><td class="gt_row gt_left">grp_raiding</td>
<td class="gt_row gt_left">q501m</td>
<td class="gt_row gt_left">Cattle raiding</td>
<td class="gt_row gt_right">0.3577</td>
<td class="gt_row gt_right">0.01881</td>
<td class="gt_row gt_right">0.3209</td>
<td class="gt_row gt_right">0.3946</td></tr>
    <tr><td class="gt_row gt_left">grp_disaster</td>
<td class="gt_row gt_left">q501l</td>
<td class="gt_row gt_left">Disaster planning</td>
<td class="gt_row gt_right">0.2829</td>
<td class="gt_row gt_right">0.01614</td>
<td class="gt_row gt_right">0.2513</td>
<td class="gt_row gt_right">0.3146</td></tr>
    <tr><td class="gt_row gt_left">grp_resource</td>
<td class="gt_row gt_left">q501c</td>
<td class="gt_row gt_left">Community natural resources</td>
<td class="gt_row gt_right">0.2543</td>
<td class="gt_row gt_right">0.01925</td>
<td class="gt_row gt_right">0.2165</td>
<td class="gt_row gt_right">0.2920</td></tr>
    <tr><td class="gt_row gt_left">grp_help</td>
<td class="gt_row gt_left">q501f</td>
<td class="gt_row gt_left">Mutual help</td>
<td class="gt_row gt_right">0.1997</td>
<td class="gt_row gt_right">0.01458</td>
<td class="gt_row gt_right">0.1711</td>
<td class="gt_row gt_right">0.2282</td></tr>
    <tr><td class="gt_row gt_left">grp_credit</td>
<td class="gt_row gt_left">q501d</td>
<td class="gt_row gt_left">Credit/microfinance</td>
<td class="gt_row gt_right">0.0940</td>
<td class="gt_row gt_right">0.00856</td>
<td class="gt_row gt_right">0.0773</td>
<td class="gt_row gt_right">0.1108</td></tr>
    <tr><td class="gt_row gt_left">grp_savings</td>
<td class="gt_row gt_left">q501e</td>
<td class="gt_row gt_left">Savings</td>
<td class="gt_row gt_right">0.0813</td>
<td class="gt_row gt_right">0.00805</td>
<td class="gt_row gt_right">0.0655</td>
<td class="gt_row gt_right">0.0971</td></tr>
  </tbody>
  
  
</table>
</div>
```
:::
:::

# Household shocks

Overall frequencies, ranked in descending order

::: {.cell hash='South-Sudan-resilience---frequencies_cache/html/unnamed-chunk-64_82a3956f0f87586f17ab369a4639995a'}

```{.r .cell-code}
#Flooding
q436 <- ov_tab(design = svyrdat, var = q_436)

q436_cnty <- svy_disag(design = svyrdat, item = q_436, disaggregate = county, varname = "q436", label = "Floods")

#Drought
q439 <- ov_tab(design = svyrdat, var = q_439)

q439_cnty <- svy_disag(design = svyrdat, item = q_439, disaggregate = county, varname = "q439", label = "Drought")

#Erosion
q442 <- ov_tab(design = svyrdat, var = q_442)

q442_cnty <- svy_disag(design = svyrdat, item = q_442, disaggregate = county, varname = "q442", label = "Erosion")

#Loss of land
q445 <- ov_tab(design = svyrdat, var = q_445)

q445_cnty <- svy_disag(design = svyrdat, item = q_445, disaggregate = county, varname = "q445", label = "Loss of land")

#Increase in food prices
q448 <- ov_tab(design = svyrdat, var = q_448)

q448_cnty <- svy_disag(design = svyrdat, item = q_448, disaggregate = county, varname = "q448", label = "Increase in food prices")

#Theft
q451 <- ov_tab(design = svyrdat, var = q_451)

q451_cnty <- svy_disag(design = svyrdat, item = q_451, disaggregate = county, varname = "q451", label = "Theft")

#No crop inputs
q455 <- ov_tab(design = svyrdat, var = q_455)

q455_cnty <- svy_disag(design = svyrdat, item = q_455, disaggregate = county, varname = "q455", label = "No crop inputs")

#Crop disease
q458 <- ov_tab(design = svyrdat, var = q_458)

q458_cnty <- svy_disag(design = svyrdat, item = q_458, disaggregate = county, varname = "q458", label = "Crop disease")

#Crop pests
q461 <- ov_tab(design = svyrdat, var = q_461)

q461_cnty <- svy_disag(design = svyrdat, item = q_461, disaggregate = county, varname = "q461", label = "Crop pests")

#Crop theft
q464 <- ov_tab(design = svyrdat, var = q_464)

q464_cnty <- svy_disag(design = svyrdat, item = q_464, disaggregate = county, varname = "q464", label = "Crop theft")

#No livestock inputs
q468 <- ov_tab(design = svyrdat, var = q_468)

q468_cnty <- svy_disag(design = svyrdat, item = q_468, disaggregate = county, varname = "q468", label = "No livestock inputs")

#Livestock disease
q471 <- ov_tab(design = svyrdat, var = q_471)

q471_cnty <- svy_disag(design = svyrdat, item = q_471, disaggregate = county, varname = "q471", label = "Livestock disease")

#Livestock theft
q474 <- ov_tab(design = svyrdat, var = q_474)

q474_cnty <- svy_disag(design = svyrdat, item = q_474, disaggregate = county, varname = "q474", label = "Livestock theft")

#Unable to sell
q477 <- ov_tab(design = svyrdat, var = q_477)

q477_cnty <- svy_disag(design = svyrdat, item = q_477, disaggregate = county, varname = "q477", label = "Unable to sell")

#Illness in household
q480 <- ov_tab(design = svyrdat, var = q_480)

q480_cnty <- svy_disag(design = svyrdat, item = q_480, disaggregate = county, varname = "q480", label = "Illness in household")

#Death in household
q484 <- ov_tab(design = svyrdat, var = q_484)

q484_cnty <- svy_disag(design = svyrdat, item = q_484, disaggregate = county, varname = "q484", label = "Death in household")

#Shocks overall frequencies
shocks_ov <- bind_rows(q436,
                       q439,
                       q442,
                       q445,
                       q448,
                       q451,
                       q455,
                       q458,
                       q461,
                       q464,
                       q468,
                       q471,
                       q474,
                       q477,
                       q480,
                       q484) %>% 
  mutate(Shocks = shock_labs) %>% 
  relocate(Shocks, .before=prop) %>% 
  select(Shocks,
         Percent=prop
         , margin
         , lower
         , upper) %>% 
  arrange(desc(Percent))

write_csv(shocks_ov, here("output/tables/shocks/shocks overall.csv"))

#gtsave(diet_ov_gt, here("output/tables/food insecurity/diet items overall.rtf"))

shocks_ov_gt <- shocks_ov %>%
  gt() %>%
  fmt_percent(2:5,
              decimals=1)

shocks_ov_gt
```

::: {.cell-output-display}
```{=html}
<div id="kllogfsonu" style="overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#kllogfsonu .gt_table {
  display: table;
  border-collapse: collapse;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#kllogfsonu .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#kllogfsonu .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#kllogfsonu .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#kllogfsonu .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#kllogfsonu .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#kllogfsonu .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#kllogfsonu .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#kllogfsonu .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#kllogfsonu .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#kllogfsonu .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#kllogfsonu .gt_group_heading {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
}

#kllogfsonu .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#kllogfsonu .gt_from_md > :first-child {
  margin-top: 0;
}

#kllogfsonu .gt_from_md > :last-child {
  margin-bottom: 0;
}

#kllogfsonu .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#kllogfsonu .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
}

#kllogfsonu .gt_stub_row_group {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
  vertical-align: top;
}

#kllogfsonu .gt_row_group_first td {
  border-top-width: 2px;
}

#kllogfsonu .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#kllogfsonu .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #D3D3D3;
}

#kllogfsonu .gt_first_summary_row.thick {
  border-top-width: 2px;
}

#kllogfsonu .gt_last_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#kllogfsonu .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#kllogfsonu .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#kllogfsonu .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#kllogfsonu .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#kllogfsonu .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#kllogfsonu .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding-left: 4px;
  padding-right: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#kllogfsonu .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#kllogfsonu .gt_sourcenote {
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#kllogfsonu .gt_left {
  text-align: left;
}

#kllogfsonu .gt_center {
  text-align: center;
}

#kllogfsonu .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#kllogfsonu .gt_font_normal {
  font-weight: normal;
}

#kllogfsonu .gt_font_bold {
  font-weight: bold;
}

#kllogfsonu .gt_font_italic {
  font-style: italic;
}

#kllogfsonu .gt_super {
  font-size: 65%;
}

#kllogfsonu .gt_footnote_marks {
  font-style: italic;
  font-weight: normal;
  font-size: 75%;
  vertical-align: 0.4em;
}

#kllogfsonu .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}

#kllogfsonu .gt_slash_mark {
  font-size: 0.7em;
  line-height: 0.7em;
  vertical-align: 0.15em;
}

#kllogfsonu .gt_fraction_numerator {
  font-size: 0.6em;
  line-height: 0.6em;
  vertical-align: 0.45em;
}

#kllogfsonu .gt_fraction_denominator {
  font-size: 0.6em;
  line-height: 0.6em;
  vertical-align: -0.05em;
}
</style>
<table class="gt_table">
  
  <thead class="gt_col_headings">
    <tr>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">Shocks</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1">Percent</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1">margin</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1">lower</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1">upper</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><td class="gt_row gt_left">Increase in food prices</td>
<td class="gt_row gt_right">83.1%</td>
<td class="gt_row gt_right">2.1%</td>
<td class="gt_row gt_right">81.0%</td>
<td class="gt_row gt_right">85.1%</td></tr>
    <tr><td class="gt_row gt_left">Livestock disease</td>
<td class="gt_row gt_right">82.0%</td>
<td class="gt_row gt_right">2.8%</td>
<td class="gt_row gt_right">79.2%</td>
<td class="gt_row gt_right">84.8%</td></tr>
    <tr><td class="gt_row gt_left">Floods</td>
<td class="gt_row gt_right">77.6%</td>
<td class="gt_row gt_right">3.2%</td>
<td class="gt_row gt_right">74.4%</td>
<td class="gt_row gt_right">80.8%</td></tr>
    <tr><td class="gt_row gt_left">No livestock inputs</td>
<td class="gt_row gt_right">74.0%</td>
<td class="gt_row gt_right">3.1%</td>
<td class="gt_row gt_right">70.9%</td>
<td class="gt_row gt_right">77.1%</td></tr>
    <tr><td class="gt_row gt_left">Unable to sell</td>
<td class="gt_row gt_right">73.8%</td>
<td class="gt_row gt_right">3.3%</td>
<td class="gt_row gt_right">70.5%</td>
<td class="gt_row gt_right">77.1%</td></tr>
    <tr><td class="gt_row gt_left">No crop inputs</td>
<td class="gt_row gt_right">69.5%</td>
<td class="gt_row gt_right">3.0%</td>
<td class="gt_row gt_right">66.5%</td>
<td class="gt_row gt_right">72.6%</td></tr>
    <tr><td class="gt_row gt_left">Crop disease</td>
<td class="gt_row gt_right">67.9%</td>
<td class="gt_row gt_right">3.5%</td>
<td class="gt_row gt_right">64.4%</td>
<td class="gt_row gt_right">71.3%</td></tr>
    <tr><td class="gt_row gt_left">Livestock theft</td>
<td class="gt_row gt_right">66.5%</td>
<td class="gt_row gt_right">3.8%</td>
<td class="gt_row gt_right">62.6%</td>
<td class="gt_row gt_right">70.3%</td></tr>
    <tr><td class="gt_row gt_left">Crop pests</td>
<td class="gt_row gt_right">64.8%</td>
<td class="gt_row gt_right">3.9%</td>
<td class="gt_row gt_right">60.9%</td>
<td class="gt_row gt_right">68.7%</td></tr>
    <tr><td class="gt_row gt_left">Illness in household</td>
<td class="gt_row gt_right">60.5%</td>
<td class="gt_row gt_right">3.7%</td>
<td class="gt_row gt_right">56.8%</td>
<td class="gt_row gt_right">64.3%</td></tr>
    <tr><td class="gt_row gt_left">Erosion</td>
<td class="gt_row gt_right">51.9%</td>
<td class="gt_row gt_right">3.8%</td>
<td class="gt_row gt_right">48.0%</td>
<td class="gt_row gt_right">55.7%</td></tr>
    <tr><td class="gt_row gt_left">Drought</td>
<td class="gt_row gt_right">49.9%</td>
<td class="gt_row gt_right">3.9%</td>
<td class="gt_row gt_right">45.9%</td>
<td class="gt_row gt_right">53.8%</td></tr>
    <tr><td class="gt_row gt_left">Loss of land</td>
<td class="gt_row gt_right">46.8%</td>
<td class="gt_row gt_right">3.8%</td>
<td class="gt_row gt_right">43.1%</td>
<td class="gt_row gt_right">50.6%</td></tr>
    <tr><td class="gt_row gt_left">Theft</td>
<td class="gt_row gt_right">46.2%</td>
<td class="gt_row gt_right">3.1%</td>
<td class="gt_row gt_right">43.0%</td>
<td class="gt_row gt_right">49.3%</td></tr>
    <tr><td class="gt_row gt_left">Crop theft</td>
<td class="gt_row gt_right">39.8%</td>
<td class="gt_row gt_right">3.7%</td>
<td class="gt_row gt_right">36.1%</td>
<td class="gt_row gt_right">43.5%</td></tr>
    <tr><td class="gt_row gt_left">Death in household</td>
<td class="gt_row gt_right">35.4%</td>
<td class="gt_row gt_right">3.8%</td>
<td class="gt_row gt_right">31.6%</td>
<td class="gt_row gt_right">39.2%</td></tr>
  </tbody>
  
  
</table>
</div>
```
:::
:::

## Household shocks by county

::: {.cell hash='South-Sudan-resilience---frequencies_cache/html/unnamed-chunk-66_3972467721f35e20a5c68712a5a698a4'}

```{.r .cell-code}
shocks_ov_cnty <- bind_rows(q436_cnty,
                       q439_cnty,
                       q442_cnty,
                       q445_cnty,
                       q448_cnty,
                       q451_cnty,
                       q455_cnty,
                       q458_cnty,
                       q461_cnty,
                       q464_cnty,
                       q468_cnty,
                       q471_cnty,
                       q474_cnty,
                       q477_cnty,
                       q480_cnty,
                       q484_cnty)  %>% 
  select(County = county
         , Shocks = label
         , Percent = Value
         , Lower = lower
         , Upper = upper)
   
#reactable for shocks by county
data_shocks_ov_cnty <- SharedData$new(shocks_ov_cnty)

bscols(
  widths = c(3,9)
  , list(filter_select("County"
                       , "County"
                       , data_shocks_ov_cnty
                       , ~County)
         , filter_select("Shocks"
                         , "Shocks"
                         , data_shocks_ov_cnty
                         , ~Shocks))
  , reactable(data_shocks_ov_cnty, showPageSizeOptions = T
              , highlight = T
              , columns = list(County = colDef(name = "County")
                               , Shocks = colDef(minWidth = 150)
                               , Percent = colDef(format = colFormat(percent = T
                                                                     , digits = 1))
                               , Lower = colDef(format = colFormat(percent = T
                                                                     , digits = 1))
                               , Upper = colDef(format = colFormat(percent = T
                                                                     , digits = 1))
              )))
```

::: {.cell-output-display}
```{=html}
<div class="container-fluid crosstalk-bscols">
<div class="row">
<div class="col-xs-3">
<div id="County" class="form-group crosstalk-input-select crosstalk-input">
<label class="control-label" for="County">County</label>
<div>
<select multiple></select>
<script type="application/json" data-for="County">{
  "items": {
    "value": ["Akobo", "Baliet", "Budi", "Duk", "Jur River", "Kapoeta North", "Leer", "Mayendit", "Paynijar", "Pibor", "Ulang", "Uror", "Wau"],
    "label": ["Akobo", "Baliet", "Budi", "Duk", "Jur River", "Kapoeta North", "Leer", "Mayendit", "Paynijar", "Pibor", "Ulang", "Uror", "Wau"]
  },
  "map": {
    "Akobo": ["1", "14", "27", "40", "53", "66", "79", "92", "105", "118", "131", "144", "157", "170", "183", "196"],
    "Baliet": ["2", "15", "28", "41", "54", "67", "80", "93", "106", "119", "132", "145", "158", "171", "184", "197"],
    "Budi": ["3", "16", "29", "42", "55", "68", "81", "94", "107", "120", "133", "146", "159", "172", "185", "198"],
    "Duk": ["4", "17", "30", "43", "56", "69", "82", "95", "108", "121", "134", "147", "160", "173", "186", "199"],
    "Jur River": ["5", "18", "31", "44", "57", "70", "83", "96", "109", "122", "135", "148", "161", "174", "187", "200"],
    "Kapoeta North": ["6", "19", "32", "45", "58", "71", "84", "97", "110", "123", "136", "149", "162", "175", "188", "201"],
    "Leer": ["7", "20", "33", "46", "59", "72", "85", "98", "111", "124", "137", "150", "163", "176", "189", "202"],
    "Mayendit": ["8", "21", "34", "47", "60", "73", "86", "99", "112", "125", "138", "151", "164", "177", "190", "203"],
    "Paynijar": ["9", "22", "35", "48", "61", "74", "87", "100", "113", "126", "139", "152", "165", "178", "191", "204"],
    "Pibor": ["10", "23", "36", "49", "62", "75", "88", "101", "114", "127", "140", "153", "166", "179", "192", "205"],
    "Ulang": ["11", "24", "37", "50", "63", "76", "89", "102", "115", "128", "141", "154", "167", "180", "193", "206"],
    "Uror": ["12", "25", "38", "51", "64", "77", "90", "103", "116", "129", "142", "155", "168", "181", "194", "207"],
    "Wau": ["13", "26", "39", "52", "65", "78", "91", "104", "117", "130", "143", "156", "169", "182", "195", "208"]
  },
  "group": ["SharedDataf54ef079"]
}</script>
</div>
</div>
<div id="Shocks" class="form-group crosstalk-input-select crosstalk-input">
<label class="control-label" for="Shocks">Shocks</label>
<div>
<select multiple></select>
<script type="application/json" data-for="Shocks">{
  "items": {
    "value": ["Crop disease", "Crop pests", "Crop theft", "Death in household", "Drought", "Erosion", "Floods", "Illness in household", "Increase in food prices", "Livestock disease", "Livestock theft", "Loss of land", "No crop inputs", "No livestock inputs", "Theft", "Unable to sell"],
    "label": ["Crop disease", "Crop pests", "Crop theft", "Death in household", "Drought", "Erosion", "Floods", "Illness in household", "Increase in food prices", "Livestock disease", "Livestock theft", "Loss of land", "No crop inputs", "No livestock inputs", "Theft", "Unable to sell"]
  },
  "map": {
    "Crop disease": ["92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104"],
    "Crop pests": ["105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117"],
    "Crop theft": ["118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128", "129", "130"],
    "Death in household": ["196", "197", "198", "199", "200", "201", "202", "203", "204", "205", "206", "207", "208"],
    "Drought": ["14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26"],
    "Erosion": ["27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39"],
    "Floods": ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13"],
    "Illness in household": ["183", "184", "185", "186", "187", "188", "189", "190", "191", "192", "193", "194", "195"],
    "Increase in food prices": ["53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65"],
    "Livestock disease": ["144", "145", "146", "147", "148", "149", "150", "151", "152", "153", "154", "155", "156"],
    "Livestock theft": ["157", "158", "159", "160", "161", "162", "163", "164", "165", "166", "167", "168", "169"],
    "Loss of land": ["40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52"],
    "No crop inputs": ["79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91"],
    "No livestock inputs": ["131", "132", "133", "134", "135", "136", "137", "138", "139", "140", "141", "142", "143"],
    "Theft": ["66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78"],
    "Unable to sell": ["170", "171", "172", "173", "174", "175", "176", "177", "178", "179", "180", "181", "182"]
  },
  "group": ["SharedDataf54ef079"]
}</script>
</div>
</div>
</div>
<div class="col-xs-9">
<div id="htmlwidget-6fe40e6f684f37a51a95" class="reactable html-widget" style="width:auto;height:auto;"></div>
<script type="application/json" data-for="htmlwidget-6fe40e6f684f37a51a95">{"x":{"tag":{"name":"Reactable","attribs":{"data":{"County":["Akobo","Baliet","Budi","Duk","Jur River","Kapoeta North","Leer","Mayendit","Paynijar","Pibor","Ulang","Uror","Wau","Akobo","Baliet","Budi","Duk","Jur River","Kapoeta North","Leer","Mayendit","Paynijar","Pibor","Ulang","Uror","Wau","Akobo","Baliet","Budi","Duk","Jur River","Kapoeta North","Leer","Mayendit","Paynijar","Pibor","Ulang","Uror","Wau","Akobo","Baliet","Budi","Duk","Jur River","Kapoeta North","Leer","Mayendit","Paynijar","Pibor","Ulang","Uror","Wau","Akobo","Baliet","Budi","Duk","Jur River","Kapoeta North","Leer","Mayendit","Paynijar","Pibor","Ulang","Uror","Wau","Akobo","Baliet","Budi","Duk","Jur River","Kapoeta North","Leer","Mayendit","Paynijar","Pibor","Ulang","Uror","Wau","Akobo","Baliet","Budi","Duk","Jur River","Kapoeta North","Leer","Mayendit","Paynijar","Pibor","Ulang","Uror","Wau","Akobo","Baliet","Budi","Duk","Jur River","Kapoeta North","Leer","Mayendit","Paynijar","Pibor","Ulang","Uror","Wau","Akobo","Baliet","Budi","Duk","Jur River","Kapoeta North","Leer","Mayendit","Paynijar","Pibor","Ulang","Uror","Wau","Akobo","Baliet","Budi","Duk","Jur River","Kapoeta North","Leer","Mayendit","Paynijar","Pibor","Ulang","Uror","Wau","Akobo","Baliet","Budi","Duk","Jur River","Kapoeta North","Leer","Mayendit","Paynijar","Pibor","Ulang","Uror","Wau","Akobo","Baliet","Budi","Duk","Jur River","Kapoeta North","Leer","Mayendit","Paynijar","Pibor","Ulang","Uror","Wau","Akobo","Baliet","Budi","Duk","Jur River","Kapoeta North","Leer","Mayendit","Paynijar","Pibor","Ulang","Uror","Wau","Akobo","Baliet","Budi","Duk","Jur River","Kapoeta North","Leer","Mayendit","Paynijar","Pibor","Ulang","Uror","Wau","Akobo","Baliet","Budi","Duk","Jur River","Kapoeta North","Leer","Mayendit","Paynijar","Pibor","Ulang","Uror","Wau","Akobo","Baliet","Budi","Duk","Jur River","Kapoeta North","Leer","Mayendit","Paynijar","Pibor","Ulang","Uror","Wau"],"Shocks":["Floods","Floods","Floods","Floods","Floods","Floods","Floods","Floods","Floods","Floods","Floods","Floods","Floods","Drought","Drought","Drought","Drought","Drought","Drought","Drought","Drought","Drought","Drought","Drought","Drought","Drought","Erosion","Erosion","Erosion","Erosion","Erosion","Erosion","Erosion","Erosion","Erosion","Erosion","Erosion","Erosion","Erosion","Loss of land","Loss of land","Loss of land","Loss of land","Loss of land","Loss of land","Loss of land","Loss of land","Loss of land","Loss of land","Loss of land","Loss of land","Loss of land","Increase in food prices","Increase in food prices","Increase in food prices","Increase in food prices","Increase in food prices","Increase in food prices","Increase in food prices","Increase in food prices","Increase in food prices","Increase in food prices","Increase in food prices","Increase in food prices","Increase in food prices","Theft","Theft","Theft","Theft","Theft","Theft","Theft","Theft","Theft","Theft","Theft","Theft","Theft","No crop inputs","No crop inputs","No crop inputs","No crop inputs","No crop inputs","No crop inputs","No crop inputs","No crop inputs","No crop inputs","No crop inputs","No crop inputs","No crop inputs","No crop inputs","Crop disease","Crop disease","Crop disease","Crop disease","Crop disease","Crop disease","Crop disease","Crop disease","Crop disease","Crop disease","Crop disease","Crop disease","Crop disease","Crop pests","Crop pests","Crop pests","Crop pests","Crop pests","Crop pests","Crop pests","Crop pests","Crop pests","Crop pests","Crop pests","Crop pests","Crop pests","Crop theft","Crop theft","Crop theft","Crop theft","Crop theft","Crop theft","Crop theft","Crop theft","Crop theft","Crop theft","Crop theft","Crop theft","Crop theft","No livestock inputs","No livestock inputs","No livestock inputs","No livestock inputs","No livestock inputs","No livestock inputs","No livestock inputs","No livestock inputs","No livestock inputs","No livestock inputs","No livestock inputs","No livestock inputs","No livestock inputs","Livestock disease","Livestock disease","Livestock disease","Livestock disease","Livestock disease","Livestock disease","Livestock disease","Livestock disease","Livestock disease","Livestock disease","Livestock disease","Livestock disease","Livestock disease","Livestock theft","Livestock theft","Livestock theft","Livestock theft","Livestock theft","Livestock theft","Livestock theft","Livestock theft","Livestock theft","Livestock theft","Livestock theft","Livestock theft","Livestock theft","Unable to sell","Unable to sell","Unable to sell","Unable to sell","Unable to sell","Unable to sell","Unable to sell","Unable to sell","Unable to sell","Unable to sell","Unable to sell","Unable to sell","Unable to sell","Illness in household","Illness in household","Illness in household","Illness in household","Illness in household","Illness in household","Illness in household","Illness in household","Illness in household","Illness in household","Illness in household","Illness in household","Illness in household","Death in household","Death in household","Death in household","Death in household","Death in household","Death in household","Death in household","Death in household","Death in household","Death in household","Death in household","Death in household","Death in household"],"Percent":[0.876022857347586,0.929183260002104,0.345707464746825,0.954301219530044,0.642853304088897,0.460985893877525,0.975100599002697,0.966203589124861,0.959329778164418,0.899275427315784,0.934932258816945,0.928100475650757,0.315402236263016,0.231684139186719,0.56373540535935,0.349774501841461,0.635475183041758,0.66420899193691,0.850023018689271,0.69044377259041,0.446168381846902,0.100465953967923,0.719363201429039,0.81132126542673,0.329183375892159,0.309065555973961,0.580552016445777,0.539137046419465,0.294818246642463,0.834137199391447,0.470054238138845,0.394472915885304,0.851244616477269,0.878011137756261,0.814140182406584,0.298706552689136,0.844451069336899,0.725338338477914,0.164882508992909,0.484242419361837,0.676704466232862,0.21832575912234,0.841224857120992,0.345377950174559,0.366764939326346,0.75311901456059,0.851330742877086,0.79003343799027,0.277660459790255,0.842490415571842,0.614827963984728,0.158128153849711,0.862322038000632,0.862672480937769,0.679892898932027,0.987165919521297,0.735853672564925,0.846291216501529,0.9531138153557,0.919967697098655,0.912271670874024,0.866075509420233,0.914382032551023,0.898969932254581,0.516552956102582,0.226004964933254,0.343829733945688,0.210689939302893,0.636456184070971,0.361768384807455,0.248613236494934,0.588862418938446,0.457031056195393,0.308505693529218,0.580880916588262,0.460575102833639,0.601353484239,0.40836822147339,0.696206659272038,0.73547529741494,0.500352482048111,0.931107315052735,0.671632320760967,0.750820975645827,0.688552488490776,0.502964066290022,0.43559827322095,0.713975145838189,0.836431754802382,0.806486460744304,0.480915478525926,0.676292038020787,0.776047714002866,0.480168747791997,0.93004308612032,0.554338623771579,0.88477078741472,0.486596204354431,0.635561328624294,0.297831473569996,0.68871189715316,0.850476831939829,0.76363239159301,0.423878177138523,0.6596802954517,0.845778215310668,0.464763014068731,0.918901185282628,0.565073113304468,0.852809699510548,0.684912743939486,0.570330022790923,0.302250825166521,0.655741981648551,0.848692338578994,0.667651671178854,0.400298800046027,0.194299120155105,0.281808964457626,0.224617723294126,0.668747998791549,0.319713899353853,0.261789805345694,0.38007995691509,0.289241873624802,0.183755667190921,0.471288030770355,0.459156627445331,0.493315458819438,0.30431692294984,0.768524205994163,0.613288452013833,0.348113649701777,0.957804414993936,0.559748504440166,0.69053293451706,0.588746948115311,0.623474709428479,0.519402302549875,0.786431676621402,0.851155567028102,0.822767049034528,0.434799283327757,0.827954464249132,0.713884617465678,0.503522865405798,0.958542092058859,0.667853008275038,0.872762032331131,0.629338990282131,0.747765774199837,0.794705859235165,0.859443420262769,0.899524932745991,0.865910420684735,0.403502890215858,0.398201028102386,0.288647383260711,0.283416287452557,0.901167404921718,0.297200570307641,0.695189364451675,0.659770600642612,0.525452071616005,0.38121164465432,0.842611944548412,0.615553035739979,0.690339158146504,0.408177320412125,0.727389277698388,0.633548644095057,0.326358952172352,0.844689402196846,0.390238751853776,0.797988173620421,0.773174086420429,0.741078169582561,0.514323555046148,0.783425477516153,0.81812458042675,0.819021655592934,0.377564153989891,0.393203204262666,0.675069099746302,0.391987897312606,0.672757376465677,0.35324764676577,0.473556017934174,0.507477082637402,0.557169243107044,0.68657783473703,0.673504601598655,0.652213293140501,0.677346110934716,0.366867509912265,0.225504220556127,0.428727119169708,0.278990337803913,0.505100000081152,0.27061525976443,0.259637060045339,0.271583365375059,0.244014348551759,0.322582870636798,0.390631335463435,0.539322960346489,0.360294603651857,0.310035463111569],"Lower":[0.821244249197787,0.8746843200125,0.213241356176862,0.915270370556964,0.574913911667414,0.344367277203029,0.961767927489655,0.939805761585218,0.940113148157369,0.862288922053795,0.879810499144678,0.874541319079125,0.221800867803202,0.146917910034733,0.44426224429171,0.209749449784074,0.496500361657474,0.624285871686037,0.796775339130164,0.63729631500443,0.353741463678404,-0.0107321777253254,0.663279103413693,0.714257765296291,0.217703999175744,0.203311658913601,0.488612024943087,0.361299533808558,0.210638672833752,0.765345931101175,0.408443515393872,0.261165589994853,0.800139390814622,0.826360583754503,0.707069615195904,0.236912645905676,0.73732900955567,0.616363633942587,0.0857931134350813,0.40141156028176,0.540808679265929,0.122148617912835,0.756548519948854,0.304932560246101,0.243383520541875,0.682428776614604,0.781162833650799,0.657266120338791,0.217934646231131,0.733020914723558,0.504835369655528,0.0912393070691684,0.817212370835387,0.776827738431095,0.551321378171525,0.976574778068542,0.694497117426343,0.801316728806924,0.926980333218071,0.881612553743278,0.856622159613312,0.829428137361347,0.853916168396172,0.854144962584174,0.417397885383655,0.181956278997335,0.199985025861585,0.12763369816785,0.497871455802402,0.320649632679252,0.173835892380126,0.517890838731458,0.361574030502574,0.198256471547775,0.525620443306589,0.348647364370827,0.508402236736834,0.322070095593938,0.589315942099937,0.644776301867675,0.388711350368915,0.890606551010347,0.596128016832607,0.64895807018833,0.532969250174163,0.344575973983916,0.237118449466318,0.674776750442647,0.698849062689409,0.694327341727681,0.386893265713793,0.531315671172678,0.638845362375278,0.331877349074923,0.890127473974296,0.488854064723916,0.831281108945759,0.32173734246478,0.505998076821153,0.10175259600119,0.642914115308491,0.723839759039292,0.654543183830636,0.328501099065257,0.536893974543524,0.727923627664838,0.258889075385554,0.873544267360846,0.502959206646164,0.808878382767854,0.539956592190951,0.433219949482624,0.0876766876179277,0.604267296805194,0.71221868024602,0.555236843042939,0.305775299580665,0.123472146912415,0.12581016968225,0.112270290551051,0.53981501330141,0.256183587770753,0.215905530827946,0.236271544849586,0.182144674057353,0.0895649718015339,0.412556365669066,0.300672163762757,0.350026664506836,0.217181067288786,0.635261950757683,0.503618723764017,0.259974641091409,0.929353650757152,0.497347299888675,0.629199495588576,0.515109789929704,0.521560941346175,0.344855932303565,0.744970385409453,0.754718988780042,0.745566029251716,0.270366764557422,0.721461902021817,0.610888176557,0.365193061681177,0.922229227265739,0.614628717992177,0.815581691065241,0.542535277637691,0.63109744104373,0.671202980870171,0.831622325126009,0.812396829078959,0.794778745229776,0.250086473493973,0.285878340819159,0.151676191532548,0.152957639637968,0.830882545431202,0.229157680981595,0.574716865472679,0.555625320588099,0.403609456096663,0.21359209410907,0.803709680987291,0.495409604203935,0.60025415918496,0.293138300641239,0.614639276093023,0.559712288934643,0.190661117012235,0.735677244786348,0.309475990475107,0.714045596535464,0.683180465846583,0.658186618640258,0.341585260115143,0.744357108242601,0.704973342146614,0.734655665565398,0.237956910951787,0.258626961460548,0.534773653175943,0.231600075655324,0.512711947295081,0.28233010452808,0.374780835670921,0.424630053933202,0.469175808697346,0.533125929458094,0.623299634574568,0.557852459351784,0.579596015114072,0.201129857387029,0.135788199524821,0.267401736143104,0.159288685850833,0.3653809159612,0.206663357143078,0.194928976542097,0.195540061665224,0.184034541032662,0.202433580086612,0.330709003215063,0.391908440075457,0.261407945446075,0.159680158240967],"Upper":[0.930801465497385,0.983682199991709,0.478173573316789,0.993332068503123,0.71079269651038,0.57760451055202,0.988433270515739,0.992601416664504,0.978546408171467,0.936261932577773,0.990054018489213,0.981659632222388,0.40900360472283,0.316450368338706,0.68320856642699,0.489799553898847,0.774450004426041,0.704132112187783,0.903270698248378,0.743591230176391,0.538595300015401,0.211664085661171,0.775447299444385,0.90838476555717,0.440662752608574,0.41481945303432,0.672492007948468,0.716974559030372,0.378997820451174,0.902928467681719,0.531664960883817,0.527780241775756,0.902349842139916,0.92966169175802,0.921210749617264,0.360500459472597,0.951573129118128,0.83431304301324,0.243971904550737,0.567073278441914,0.812600253199795,0.314502900331846,0.92590119429313,0.385823340103018,0.490146358110818,0.823809252506576,0.921498652103373,0.922800755641749,0.33738627334938,0.951959916420126,0.724820558313927,0.225017000630253,0.907431705165876,0.948517223444444,0.808464419692528,0.997757060974052,0.777210227703507,0.891265704196134,0.979247297493329,0.958322840454031,0.967921182134735,0.902722881479119,0.974847896705874,0.943794901924987,0.615708026821508,0.270053650869174,0.487674442029791,0.293746180437936,0.775040912339541,0.402887136935658,0.323390580609743,0.659833999145434,0.552488081888212,0.41875491551066,0.636141389869936,0.572502841296449,0.694304731741167,0.494666347352842,0.80309737644414,0.826174292962204,0.611993613727308,0.971608079095123,0.747136624689328,0.852683881103324,0.844135726807389,0.661352158596129,0.634078096975582,0.753173541233731,0.974014446915354,0.918645579760927,0.574937691338058,0.821268404868896,0.913250065630454,0.62846014650907,0.969958698266345,0.619823182819242,0.938260465883682,0.651455066244083,0.765124580427435,0.493910351138802,0.734509678997828,0.977113904840366,0.872721599355384,0.51925525521179,0.782466616359875,0.963632802956497,0.670636952751908,0.964258103204409,0.627187019962772,0.896741016253243,0.829868895688022,0.707440096099222,0.516824962715115,0.707216666491907,0.985165996911967,0.78006649931477,0.49482230051139,0.265126093397795,0.437807759233003,0.336965156037201,0.797680984281687,0.383244210936953,0.307674079863442,0.523888368980593,0.396339073192251,0.277946362580308,0.530019695871643,0.617641091127906,0.63660425313204,0.391452778610894,0.901786461230642,0.722958180263648,0.436252658312144,0.98625517923072,0.622149708991656,0.751866373445544,0.662384106300918,0.725388477510783,0.693948672796185,0.82789296783335,0.947592145276162,0.899968068817339,0.599231802098091,0.934447026476447,0.816881058374356,0.641852669130419,0.994854956851979,0.721077298557899,0.929942373597022,0.716142702926572,0.864434107355945,0.918208737600159,0.887264515399528,0.986653036413022,0.937042096139695,0.556919306937743,0.510523715385614,0.425618574988874,0.413874935267146,0.971452264412234,0.365243459633688,0.815661863430671,0.763915880697124,0.647294687135347,0.54883119519957,0.881514208109533,0.735696467276023,0.780424157108049,0.52321634018301,0.840139279303754,0.70738499925547,0.46205678733247,0.953701559607344,0.471001513232444,0.881930750705378,0.863167706994274,0.823969720524863,0.687061849977153,0.822493846789705,0.931275818706887,0.903387645620471,0.517171397027996,0.527779447064784,0.81536454631666,0.552375718969888,0.832802805636272,0.42416518900346,0.572331200197427,0.590324111341602,0.645162677516743,0.840029740015965,0.723709568622742,0.746574126929217,0.77509620675536,0.532605162437501,0.315220241587433,0.590052502196312,0.398691989756994,0.644819084201103,0.334567162385781,0.324345143548582,0.347626669084895,0.303994156070855,0.442732161186984,0.450553667711807,0.68673748061752,0.45918126185764,0.460390767982171]},"columns":[{"accessor":"County","name":"County","type":"character"},{"accessor":"Shocks","name":"Shocks","type":"character","minWidth":150},{"accessor":"Percent","name":"Percent","type":"numeric","format":{"cell":{"digits":1,"percent":true},"aggregated":{"digits":1,"percent":true}}},{"accessor":"Lower","name":"Lower","type":"numeric","format":{"cell":{"digits":1,"percent":true},"aggregated":{"digits":1,"percent":true}}},{"accessor":"Upper","name":"Upper","type":"numeric","format":{"cell":{"digits":1,"percent":true},"aggregated":{"digits":1,"percent":true}}}],"defaultPageSize":10,"showPageSizeOptions":true,"pageSizeOptions":[10,25,50,100],"paginationType":"numbers","showPageInfo":true,"minRows":1,"highlight":true,"crosstalkKey":["1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30","31","32","33","34","35","36","37","38","39","40","41","42","43","44","45","46","47","48","49","50","51","52","53","54","55","56","57","58","59","60","61","62","63","64","65","66","67","68","69","70","71","72","73","74","75","76","77","78","79","80","81","82","83","84","85","86","87","88","89","90","91","92","93","94","95","96","97","98","99","100","101","102","103","104","105","106","107","108","109","110","111","112","113","114","115","116","117","118","119","120","121","122","123","124","125","126","127","128","129","130","131","132","133","134","135","136","137","138","139","140","141","142","143","144","145","146","147","148","149","150","151","152","153","154","155","156","157","158","159","160","161","162","163","164","165","166","167","168","169","170","171","172","173","174","175","176","177","178","179","180","181","182","183","184","185","186","187","188","189","190","191","192","193","194","195","196","197","198","199","200","201","202","203","204","205","206","207","208"],"crosstalkGroup":"SharedDataf54ef079","dataKey":"171a628135bd48380b0f4eb2e46fb61a","key":"171a628135bd48380b0f4eb2e46fb61a"},"children":[]},"class":"reactR_markup"},"evals":[],"jsHooks":[]}</script>
</div>
</div>
</div>
```
:::
:::

### Wide format to better show shocks across counties

::: {.cell hash='South-Sudan-resilience---frequencies_cache/html/unnamed-chunk-68_25131e0dc79297e80670e6b132598522'}

```{.r .cell-code}
shocks_cnty_wide <- shocks_ov_cnty %>%
  select(1, 2, 3) %>% 
  as.data.frame() %>% 
  pivot_wider(names_from=County
              , values_from=Percent)

#Reactable with filter on Shocks
data_shocks_cnty_wide <- SharedData$new(shocks_cnty_wide)

bscols(
  widths= c(3,9)
  , list(filter_select("Shocks"
                       , "Shocks"
                       , data_shocks_cnty_wide
                       , ~Shocks))
  , reactable::reactable(data_shocks_cnty_wide, showPageSizeOptions = T
              , highlight = T
              , columns = list(Shocks = colDef(name = "Shocks"
                , minWidth = 150
                , sticky = "left" 
                , style = list(borderRight = "1px solid #eee")                                   , headerStyle = list(borderRight = "1px solid #eee"))
                
                               , Akobo = colDef(name = "Akobo"
                       , format = colFormat(percent = T, digits = 1))
    , Baliet = colDef(name = "Baliet"
                     , format = colFormat(percent = T
                                          , digits = 1))
    , Budi = colDef(name = "Budi"
                     , format = colFormat(percent = T
                                          , digits = 1))
    , Duk = colDef(name = "Duk"
                     , format = colFormat(percent = T
                                          , digits = 1))
    , "Jur River" = colDef(name = "Jur River"
                     , format = colFormat(percent = T
                                          , digits = 1))
    , "Kapoeta North" = colDef(name = "Kapoeta North"
                     , format = colFormat(percent = T
                                          , digits = 1))
    , Leer = colDef(name = "Leer"
                     , format = colFormat(percent = T
                                          , digits = 1))
    , Mayendit = colDef(name = "Mayendit"
                     , format = colFormat(percent = T
                                          , digits = 1))
    , Paynijar = colDef(name = "Paynijar"
                     , format = colFormat(percent = T
                                          , digits = 1))
    , Pibor = colDef(name = "Pibor"
                     , format = colFormat(percent = T
                                          , digits = 1))
    , Ulang = colDef(name = "Ulang"
                     , format = colFormat(percent = T
                                          , digits = 1))
    , Uror = colDef(name = "Uror"
                     , format = colFormat(percent = T
                                          , digits = 1))
    , Wau = colDef(name = "Wau"
                     , format = colFormat(percent = T
                                          , digits = 1)) 
                               )))
```

::: {.cell-output-display}
```{=html}
<div class="container-fluid crosstalk-bscols">
<div class="row">
<div class="col-xs-3">
<div id="Shocks" class="form-group crosstalk-input-select crosstalk-input">
<label class="control-label" for="Shocks">Shocks</label>
<div>
<select multiple></select>
<script type="application/json" data-for="Shocks">{
  "items": {
    "value": ["Crop disease", "Crop pests", "Crop theft", "Death in household", "Drought", "Erosion", "Floods", "Illness in household", "Increase in food prices", "Livestock disease", "Livestock theft", "Loss of land", "No crop inputs", "No livestock inputs", "Theft", "Unable to sell"],
    "label": ["Crop disease", "Crop pests", "Crop theft", "Death in household", "Drought", "Erosion", "Floods", "Illness in household", "Increase in food prices", "Livestock disease", "Livestock theft", "Loss of land", "No crop inputs", "No livestock inputs", "Theft", "Unable to sell"]
  },
  "map": {
    "Crop disease": ["8"],
    "Crop pests": ["9"],
    "Crop theft": ["10"],
    "Death in household": ["16"],
    "Drought": ["2"],
    "Erosion": ["3"],
    "Floods": ["1"],
    "Illness in household": ["15"],
    "Increase in food prices": ["5"],
    "Livestock disease": ["12"],
    "Livestock theft": ["13"],
    "Loss of land": ["4"],
    "No crop inputs": ["7"],
    "No livestock inputs": ["11"],
    "Theft": ["6"],
    "Unable to sell": ["14"]
  },
  "group": ["SharedData7d566ec3"]
}</script>
</div>
</div>
</div>
<div class="col-xs-9">
<div id="htmlwidget-cbea70ada24c8a9493a4" class="reactable html-widget" style="width:auto;height:auto;"></div>
<script type="application/json" data-for="htmlwidget-cbea70ada24c8a9493a4">{"x":{"tag":{"name":"Reactable","attribs":{"data":{"Shocks":["Floods","Drought","Erosion","Loss of land","Increase in food prices","Theft","No crop inputs","Crop disease","Crop pests","Crop theft","No livestock inputs","Livestock disease","Livestock theft","Unable to sell","Illness in household","Death in household"],"Akobo":[0.876022857347586,0.231684139186719,0.580552016445777,0.484242419361837,0.862322038000632,0.226004964933254,0.696206659272038,0.676292038020787,0.6596802954517,0.194299120155105,0.768524205994163,0.827954464249132,0.398201028102386,0.727389277698388,0.393203204262666,0.225504220556127],"Baliet":[0.929183260002104,0.56373540535935,0.539137046419465,0.676704466232862,0.862672480937769,0.343829733945688,0.73547529741494,0.776047714002866,0.845778215310668,0.281808964457626,0.613288452013833,0.713884617465678,0.288647383260711,0.633548644095057,0.675069099746302,0.428727119169708],"Budi":[0.345707464746825,0.349774501841461,0.294818246642463,0.21832575912234,0.679892898932027,0.210689939302893,0.500352482048111,0.480168747791997,0.464763014068731,0.224617723294126,0.348113649701777,0.503522865405798,0.283416287452557,0.326358952172352,0.391987897312606,0.278990337803913],"Duk":[0.954301219530044,0.635475183041758,0.834137199391447,0.841224857120992,0.987165919521297,0.636456184070971,0.931107315052735,0.93004308612032,0.918901185282628,0.668747998791549,0.957804414993936,0.958542092058859,0.901167404921718,0.844689402196846,0.672757376465677,0.505100000081152],"Jur River":[0.642853304088897,0.66420899193691,0.470054238138845,0.345377950174559,0.735853672564925,0.361768384807455,0.671632320760967,0.554338623771579,0.565073113304468,0.319713899353853,0.559748504440166,0.667853008275038,0.297200570307641,0.390238751853776,0.35324764676577,0.27061525976443],"Kapoeta North":[0.460985893877525,0.850023018689271,0.394472915885304,0.366764939326346,0.846291216501529,0.248613236494934,0.750820975645827,0.88477078741472,0.852809699510548,0.261789805345694,0.69053293451706,0.872762032331131,0.695189364451675,0.797988173620421,0.473556017934174,0.259637060045339],"Leer":[0.975100599002697,0.69044377259041,0.851244616477269,0.75311901456059,0.9531138153557,0.588862418938446,0.688552488490776,0.486596204354431,0.684912743939486,0.38007995691509,0.588746948115311,0.629338990282131,0.659770600642612,0.773174086420429,0.507477082637402,0.271583365375059],"Mayendit":[0.966203589124861,0.446168381846902,0.878011137756261,0.851330742877086,0.919967697098655,0.457031056195393,0.502964066290022,0.635561328624294,0.570330022790923,0.289241873624802,0.623474709428479,0.747765774199837,0.525452071616005,0.741078169582561,0.557169243107044,0.244014348551759],"Paynijar":[0.959329778164418,0.100465953967923,0.814140182406584,0.79003343799027,0.912271670874024,0.308505693529218,0.43559827322095,0.297831473569996,0.302250825166521,0.183755667190921,0.519402302549875,0.794705859235165,0.38121164465432,0.514323555046148,0.68657783473703,0.322582870636798],"Pibor":[0.899275427315784,0.719363201429039,0.298706552689136,0.277660459790255,0.866075509420233,0.580880916588262,0.713975145838189,0.68871189715316,0.655741981648551,0.471288030770355,0.786431676621402,0.859443420262769,0.842611944548412,0.783425477516153,0.673504601598655,0.390631335463435],"Ulang":[0.934932258816945,0.81132126542673,0.844451069336899,0.842490415571842,0.914382032551023,0.460575102833639,0.836431754802382,0.850476831939829,0.848692338578994,0.459156627445331,0.851155567028102,0.899524932745991,0.615553035739979,0.81812458042675,0.652213293140501,0.539322960346489],"Uror":[0.928100475650757,0.329183375892159,0.725338338477914,0.614827963984728,0.898969932254581,0.601353484239,0.806486460744304,0.76363239159301,0.667651671178854,0.493315458819438,0.822767049034528,0.865910420684735,0.690339158146504,0.819021655592934,0.677346110934716,0.360294603651857],"Wau":[0.315402236263016,0.309065555973961,0.164882508992909,0.158128153849711,0.516552956102582,0.40836822147339,0.480915478525926,0.423878177138523,0.400298800046027,0.30431692294984,0.434799283327757,0.403502890215858,0.408177320412125,0.377564153989891,0.366867509912265,0.310035463111569]},"columns":[{"accessor":"Shocks","name":"Shocks","type":"character","minWidth":150,"sticky":"left","style":{"borderRight":"1px solid #eee"},"headerStyle":{"borderRight":"1px solid #eee"}},{"accessor":"Akobo","name":"Akobo","type":"numeric","format":{"cell":{"digits":1,"percent":true},"aggregated":{"digits":1,"percent":true}}},{"accessor":"Baliet","name":"Baliet","type":"numeric","format":{"cell":{"digits":1,"percent":true},"aggregated":{"digits":1,"percent":true}}},{"accessor":"Budi","name":"Budi","type":"numeric","format":{"cell":{"digits":1,"percent":true},"aggregated":{"digits":1,"percent":true}}},{"accessor":"Duk","name":"Duk","type":"numeric","format":{"cell":{"digits":1,"percent":true},"aggregated":{"digits":1,"percent":true}}},{"accessor":"Jur River","name":"Jur River","type":"numeric","format":{"cell":{"digits":1,"percent":true},"aggregated":{"digits":1,"percent":true}}},{"accessor":"Kapoeta North","name":"Kapoeta North","type":"numeric","format":{"cell":{"digits":1,"percent":true},"aggregated":{"digits":1,"percent":true}}},{"accessor":"Leer","name":"Leer","type":"numeric","format":{"cell":{"digits":1,"percent":true},"aggregated":{"digits":1,"percent":true}}},{"accessor":"Mayendit","name":"Mayendit","type":"numeric","format":{"cell":{"digits":1,"percent":true},"aggregated":{"digits":1,"percent":true}}},{"accessor":"Paynijar","name":"Paynijar","type":"numeric","format":{"cell":{"digits":1,"percent":true},"aggregated":{"digits":1,"percent":true}}},{"accessor":"Pibor","name":"Pibor","type":"numeric","format":{"cell":{"digits":1,"percent":true},"aggregated":{"digits":1,"percent":true}}},{"accessor":"Ulang","name":"Ulang","type":"numeric","format":{"cell":{"digits":1,"percent":true},"aggregated":{"digits":1,"percent":true}}},{"accessor":"Uror","name":"Uror","type":"numeric","format":{"cell":{"digits":1,"percent":true},"aggregated":{"digits":1,"percent":true}}},{"accessor":"Wau","name":"Wau","type":"numeric","format":{"cell":{"digits":1,"percent":true},"aggregated":{"digits":1,"percent":true}}}],"defaultPageSize":10,"showPageSizeOptions":true,"pageSizeOptions":[10,25,50,100],"paginationType":"numbers","showPageInfo":true,"minRows":1,"highlight":true,"crosstalkKey":["1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16"],"crosstalkGroup":"SharedData7d566ec3","dataKey":"a573ac0783e2591b058ab7b921e0650e"},"children":[]},"class":"reactR_markup"},"evals":[],"jsHooks":[]}</script>
</div>
</div>
</div>
```
:::
:::
