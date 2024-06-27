library(MASS)
library(car)
library(ggplot2)
library(plyr)
library(gridExtra)
library(ggmosaic)
library(Hmisc)
library(lsr)
library(reshape2)
library(epitools)
library(binom)
library(lme4)
library(data.table) 
library(dplyr)
library(RColorBrewer)
library(cowplot)
library(xlsx)  #needs Java
library(Rmisc)
library(readxl)
library("writexl")
library(multcompView)
library("stringr") 
library('officer') 
library("readr")
library("pacman")


library(gt)

df<-read.xlsx("Report Information.xlsx")
blank<-""

report.date<-"2/23/2024"
experiment.ID<-"240215_UNI_PRMY_WC_CEW_FAW_SCB_WCR_Plate_458_OLDWAY"
samples.submission.date<-"2/15/2024"
objective<-"Primary Screen-Test 1"
species<-"CEW"

trial.setup.date<-"2/15/2024"
trial.completion.date<-"2/23/2024"
insect.source<-"Benzon"

submittor<-"Madison"
project<-"Metagenomics and Uniprot"

df$B<-c(report.date,experiment.ID,samples.submission.date,objective,species)
df$D<-c(trial.setup.date,trial.completion.date,insect.source,blank,blank)
df$F<-c(submittor,project,blank,blank,blank)

info_gt<-gt(df)
info_gt<-
    info_gt |>
    tab_options(column_labels.hidden = TRUE)


info_gt








## gt examples ##

islands_tbl <- 
    tibble(
        name = names(islands),
        size = islands
    ) |>
    arrange(desc(size)) |>
    slice(1:10)
islands_tbl

gt_tbl <- gt(islands_tbl)
gt_tbl

# Display the `islands_tbl` data with a stub,
# a heading, source notes, and footnotes
gt_tbl <- 
    gt_tbl |>
    tab_header(
        title = "Large Landmasses of the World",
        subtitle = "The top ten largest are presented"
    ) |>
    tab_source_note(
        source_note = "Source: The World Almanac and Book of Facts, 1975, page 406."
    ) |>
    tab_source_note(
        source_note = md("Reference: McNeil, D. R. (1977) *Interactive Data Analysis*. Wiley.")
    ) |>
    tab_footnote(
        footnote = md("The **largest** by area."),
        locations = cells_body(
            columns = size, rows = largest
        )
    ) |>
    tab_footnote(
        footnote = "The lowest by population.",
        locations = cells_body(
            columns = size, rows = contains("arc")
        )
    )

# Show the gt table
gt_tbl

gt_tbl <- 
    gt_tbl |> 
    tab_row_group(
        label = "continent",
        rows = 1:6
    ) |>
    tab_row_group(
        label = "country",
        rows = c("Australia", "Greenland")
    ) |>
    tab_row_group(
        label = "subregion",
        rows = c("New Guinea", "Borneo")
    )

















