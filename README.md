# covid19

## policy network analysis

An attempt to use social network analysis to analyse policy networks:

 * SAGE

## policy media analysis

An attempt to use text mining to analyse press statements and briefings:

 * NZ: Jacinda Ardern/Andrew Bloomfield

## covid19 data

Inevitably, a place to look at covid19 data. 

Best viewed at https://dataknut.github.io/covid19/

 * https://ourworldindata.org/grapher/total-covid-deaths-per-million?tab=chart&year=2020-04-29&country=OWID_WRL+GBR
   * covid19 deaths/million: "our current score of 388 puts (UK/GB?) fourth, behind Belgium (632), Spain (509) and Italy (452)"
   * so for comparison with the flu data below this is 0.038%, 0.063%, 0.051% and 0.045% (for now... but see excellent discussion by [david-spiegelhalter (who else!?)](https://www.theguardian.com/profile/david-spiegelhalter) of what might not be included - [collateral damage](https://www.theguardian.com/commentisfree/2020/apr/30/coronavirus-deaths-how-does-britain-compare-with-other-countries) etc)
 * go to [FT.com - look at excess deaths plots](https://www.ft.com/coronavirus-latest)
 * USA [deaths](dataMining/usaDeaths.html) - using https://gis.cdc.gov/grasp/fluview/mortality.html
 * UK deaths - ideally using https://www.ons.gov.uk/peoplepopulationandcommunity/birthsdeathsandmarriages/deaths/datasets/weeklyprovisionalfiguresondeathsregisteredinenglandandwales but there is one xl per year!!

## Flu 1918 notes

"It is estimated that about 500 million people or one-third of the world’s population became infected with this virus. The number of deaths was estimated to be at least 50 million worldwide with about 675,000 occurring in the United States." https://www.cdc.gov/flu/pandemic-resources/1918-pandemic-h1n1.html

So IFR = 10% ?

But: "The death rate was 25 times higher than in a normal flu epidemic (2.5 per cent compared with 0.1 per cent)" https://www.independent.co.uk/life-style/health-and-families/health-news/flu-how-britain-coped-in-the-1918-epidemic-5348535.html

 * NZ - 9000 New Zealanders died (2500 Māori); [public health interventions](https://nzhistory.govt.nz/culture/influenza-pandemic-1918) used 
   * Pākehā mortality rate: 5.8 per thousand (0.58% "[But in some communities it was well above the national average](https://nzhistory.govt.nz/culture/1918-influenza-pandemic/death-rates)." )
   * Māori : **50** per thousand ([5%](https://nzhistory.govt.nz/culture/influenza-pandemic-1918/maori-and-the-flu)) ([4%?](https://www.auckland.ac.nz/en/news/2020/03/20/equity-maori-prioritised-covid-19-response.html)) - hence Māori [response](https://www.tvnz.co.nz/one-news/new-zealand/m-ori-leaders-push-ahead-plans-roadblocks-checkpoints-tribal-boundaries-amid-coronavirus-lockdown) to covid
   * Military camps: ~ 23/1000 (2.3%)
 * Spain
   * [eight million](https://www.independent.co.uk/life-style/health-and-families/health-news/flu-how-britain-coped-in-the-1918-epidemic-5348535.html) deaths 
 * GB
   * Public health interventions? [Indy says yes](https://www.independent.co.uk/life-style/health-and-families/health-news/flu-how-britain-coped-in-the-1918-epidemic-5348535.html) but Bootsma & Ferguson [Section 2 ](https://www.pnas.org/content/pnas/suppl/2007/04/09/0611071104.DC1/11071SIAppendix.pdf) says not.
   * [228,000](https://www.historic-uk.com/HistoryUK/HistoryofBritain/The-Spanish-Flu-pandemic-of-1918/) deaths
   * weekly death rate approached 100/100,000 (1/1000 = 0.1%) in some areas (Fig S1 in https://www.pnas.org/content/pnas/suppl/2007/04/09/0611071104.DC1/11071SIAppendix.pdf)
   * total mortality 400-800/100,000 (4-8/1000 0.4%-0.8% c.f. Pākehā in NZ)
   * [not spatially homogeneous](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC2596813/) <- great paper! - urban areas 30-40% higher
   * applying these values to the 2020 UK population of 65 million:
     * 4/1000 (0.4%) -> 260k deaths
     * 8/1000 (0.8%) -> 520k deaths
     * which is basically what the [Imperial model](https://www.imperial.ac.uk/mrc-global-infectious-disease-analysis/covid-19/report-9-impact-of-npis-on-covid-19/) with no interventions estimated
   * As of May 5th 2020 UK had seen ~ 29000 covid deaths = 0.04% (but )
 * USA
   * Public health interventions varied by [City & state](https://www.pnas.org/content/104/18/7588 )
   * 400-1200/100,000 (0.4% - 1.2% depending on area) excess mortality (pneumonia & flu)
 * Western Samoa [lost 20 per cent](https://www.independent.co.uk/life-style/health-and-families/health-news/flu-how-britain-coped-in-the-1918-epidemic-5348535.html) of its population 
   
## London plague 1665

 * 15% [died](https://www.historic-uk.com/HistoryUK/HistoryofEngland/The-Great-Plague/) 
 * at its peak in August, 31159 people died
 * 80% of village of Eyam died

