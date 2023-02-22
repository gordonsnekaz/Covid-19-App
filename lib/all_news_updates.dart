import 'dart:math';

import 'package:co_reg/single_news_page.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class AllNewsUpdates extends StatelessWidget {
  final headings = <String>[
    'Why Covid-19 Vaccine',
    'Covid-19 Variants',
    'Lockdown Phase 2',
    'Why are cases rising',
    'US to drop test requirements',
    'Less people in need of food',
    'Covid-19 Disaster Pay...',
    'How often can i be tested positive',
    'What to do if you are tested positive',
  ];

  final summarries = <String>[
    '''COVID-19 vaccines available in the United States are effective at protecting people from getting seriously ill, being hospitalized, and even dying—especially people who are boosted.
As with vaccines for other diseases, you are protected best when you stay up to date with the recommended number of doses and boosters.
COVID-19 vaccines even offer protection to people who had COVID-19, including protection against being hospitalized from a new infection.
COVID-19 vaccines are safe—much safer than getting COVID-19.''',
    '''All viruses, including SARS-CoV-2, the virus that causes COVID-19, change over time. Most changes have little to no impact on the virus’ properties. However, some changes may affect the virus’s properties, such as how easily it spreads, the associated disease severity, or the performance of vaccines, therapeutic medicines, diagnostic tools, or other public health and social measures. 
    WHO, in collaboration with partners, expert networks, national authorities, institutions and researchers have been monitoring and assessing the evolution of SARS-CoV-2 since January 2020. During late 2020, the emergence of variants that posed an increased risk to global public health prompted the characterisation of specific Variants of Interest (VOIs) and Variants of Concern (VOCs), in order to prioritise global monitoring and research, and ultimately to inform the ongoing response to the COVID-19 pandemic.  
    WHO and its international networks of experts are monitoring changes to the virus so that if significant amino acid substitutions are identified, we can inform countries and the public about any changes that may be needed to respond to the variant, and prevent its spread. Globally, systems have been established and are being strengthened to detect “signals” of potential VOIs or VOCs and assess these based on the risk posed to global public health. National authorities may choose to designate other variants of local interest/concern. 
    Reducing transmission through established and proven disease control methods/measures, as well as avoiding introductions into animal populations, are crucial aspects of the global strategy to reduce the occurrence of mutations that have negative public health implications.
    Current strategies and measures recommended by WHO continue to work against virus variants identified since the start of the pandemic. Evidence from multiple countries with extensive transmission of VOCs has indicated that public health and social measures (PHSM), 
    including infection prevention and control (IPC) measures, have been effective in reducing COVID-19 cases, hospitalizations and deaths. National and local authorities are encouraged to continue strengthening existing PHSM and IPC measures. Authorities are also encouraged to strengthen surveillance and sequencing capacities and apply a systematic approach to provide a representative indication of the extent of transmission of SARS-CoV-2 variants based on the local context, and to detect unusual epidemiological events. 
    The established nomenclature systems for naming and tracking SARS-CoV-2 genetic lineages by GISAID, Nextstrain and Pango are currently and will remain in use by scientists and in scientific research. To assist with public discussions of variants, WHO convened a group of scientists from the WHO Virus Evolution Working Group (now called the Technical Advisory Group on Virus Evolution), the WHO COVID-19 reference laboratory network, 
    representatives from GISAID, Nextstrain, Pango and additional experts in virological, microbial nomenclature and communication from several countries and agencies to consider easy-to-pronounce and non-stigmatising labels for VOI and VOC. At the present time, this expert group convened by WHO has recommended using letters of the Greek Alphabet, i.e., Alpha, Beta, Gamma, Delta which will be 
    easier and more practical to be discussed by non-scientific audiences. When using this naming scheme and referring to the genomic sequence of SARS-CoV-2 identified from the first cases (December 2019), the term ‘index virus’ should be used.''',
    '''Lockdown Phase 2''',
    '''For many of us it was feeling like this summer might be the one where we could forget about COVID - at least for a while.
    And today's uptick in infection rates certainly isn't a reason to put down the ice cream and start panicking.
    But it is, perhaps, a reminder of what the experts told us all along: that COVID would continue to evolve and while the worst of it is most likely to be over, it will never be gone for good.
    The latest rise in cases in today's ONS figures is very modest compared to the surges in the Delta and Omicron waves. But like those, it could be partly driven by new sub-variants of the virus.
    Most cases are now caused by the BA.2 variant of Omicron. But the ONS survey data also points to two closely related viruses, BA.4 and BA.5 rising in number as BA.2 infections fall.
    There's some evidence, like previous variants, that minor genetic changes in these viruses allow them to avoid some of our immunity to COVID - giving them a modest advantage. It's probable that the Jubilee weekend will give case numbers a boost when data including the bank holiday is published.
    Not just visitors piling into the capital to watch celebrations, but also the thousands mixing closer to home at street parties and services.''',
    '''Officials said they were dropping the requirement due to the "tremendous progress" the country had made in the fight against the virus.
    The travel industry has been pushing for an end to the policy, which they say has deterred bookings, as families fear getting stranded abroad.
    The change comes into effect on Sunday. The Centers for Disease Control and Prevention (CDC) will re-evaluate the policy in 90 days. The administration said it would "not hesitate to act" to reinstate the rule should new variants make officials believe it is necessary.
    "We are able to take this step because of the tremendous progress we've made in our fight against the virus: We have made lifesaving vaccines and treatments widely available and these tools are working to prevent serious illness and death, and are effective against the prevalent variants circulating in the US and around the world," a senior official told reporters.
    Cancelled flights fuel summer holiday fears US judge throws out Biden's traveller mask mandate
    The US introduced rules requiring air travellers to test negative within three days of their flight - or provide proof of recent recovery from the virus - in January 2021.
    US President Joe Biden tightened the policy to within one day of flying in December, as the Omicron variant pushed virus cases higher. The testing measure did not apply to land crossings.
    Most non-US citizens must still be vaccinated to travel to the country.
    The number of Covid cases in the US has dropped sharply since January, though the figures had started to rise again in recent weeks before plateauing. Deaths remain much lower than during the height of the pandemic because of the impact of the vaccination programme.
    The travel sector, which has seen demand surge as concerns about the pandemic wane, has said the US has lagged behind other countries in re-evaluating testing policies.
    The UK removed all Covid-19 test requirements for travel in March, as did Canada. Italy ended its testing requirements this month.
    On Friday, Canada also said it would pause random Covid testing at airports for the rest of June in order to reduce wait times for travellers.
    US Travel Association president Roger Dow said the change in policy would "accelerate the recovery of the US travel industry", while the International Air Transport Association said it was "great news" the "ineffective" measure was being dropped.
    Airline Virgin Atlantic also welcomed the move, saying it would "boost consumer confidence even further and support the rebound in transatlantic travel this summer".
    The US has been slowly easing Covid national restrictions. Last November, it lifted restrictions on travellers from more than 30 countries, including the UK, after a more than 18-month ban.
    In April, the US dropped its requirement that passengers wear masks on planes after a court voided the CDC's mandate.
    According to research by the US Travel Association, eliminating the test requirement is likely to bring an additional 5.4 million visitors to the US this year, boosting travel spending by 12%,
    "Today marks another huge step forward for the recovery of inbound air travel and the return of international travel to the United States," Mr Dow said.''',
    '''THE number of people in need of food aid due to Covid-19-induced 
    poverty has gone down in Zimbabwe, a development attributed to the success of the Government initiated Pvumvudza/Intwasa programme which resulted in a number of people realising bumper harvests last year.
    In a report titled “Monitoring Covid-19 Impact on Households in Zimbabwe,” the Zimbabwe Statistical Agency (ZimStat) said the proportion of the population facing severe food insecurity fell from 18 percent in March 2021 to nine percent between 
    September and October 2021. The onset of Covid-19 came with lockdowns and many Zimbabweans lost their sources of income, leaving thousands food insecure in 2020. Government adopted Intwasa programme to 
    address the problem of low production and productivity which continued to negatively affect food security in Zimbabwe. The concept promotes climate-proof agriculture by adopting conservation farming techniques and it involves utilisation 
    of small pieces of land and application of the correct agronomic practices for higher returns. Statistics show that more than 8,6 million Zimbabweans were food insecure and the situation was worsened by the Covid-19 pandemic whose impact disrupted many economic activities in 2020.
    “In July 2020, immediately after the onset of the pandemic, severe food insecurity was 27 percent. Likewise, the proportion of people facing moderate or severe food insecurity decreased from 61 percent in March 2021 to 38 percent between September and October 2021. 
    In July 2020, the moderate to severe food insecurity was 72 percent,” read the report. “This means the food security situation improved steadily from early 2020 into late 2021. 
    The improvement in food security in 2021 was most pronounced in rural areas, with severe or moderate food insecurity falling from 72 percent of population to 39 percent. This is consistent given the bumper harvest of the 2021 season following implementation of the Pfumvudza.”
    The results suggest that the extreme poverty rate declined to 43 percent in September-October 2021 from a peak of 49 percent in September 2020 soon after the onset of the Covid-19 pandemic.''',
    '''Two Malaysian nationals have been charged over their alleged roles in a syndicate which fraudulently claimed more than \$440,000 in Covid-19 disaster payments.
    The Australian Federal Police allege that a 34-year-old woman and a 27-year-old man acted as part of syndicate that advertised services on social media to act as ‘agents’ to help people claim Covid-19 Disaster Payments. 
    In June 2021, the Federal Government announced the lump sum payments in a bid to help Australians whose income was affected by Covid-19 restrictions.
    People who engaged the services of the alleged syndicate provided it with identity documents and some reportedly paid up to \$1000 for the ‘agents’ to help them with their claims.
    An investigation undertaken by Operation Quantum under Taskforce Integrity – a joint AFP and Services Australia initiative established to stamp out those taking advantage of Australia’s welfare system – found that the alleged syndicate claimed over \$440,000 in Covid-19 Disaster Payments from Australians doing it tough.
    On June 9, the Australian Federal Police – along with Services Australia fraud investigators – carried out a search warrant at a Lidcombe home in Sydney’s west.''',
    '''A virus that shows no signs of disappearing, variants that are adept at dodging the body’s defenses, and waves of infections two, maybe three times a year — this may be the future of Covid-19, some scientists now fear.
    The central problem is that the coronavirus has become more adept at reinfecting people. Already, those infected with the first Omicron variant are reporting second infections with the newer versions of the variant — BA.2 or BA2.12.1 in the United States, or BA.4 and BA.5 in South Africa.
    Those people may go on to have third or fourth infections, even within this year, researchers said in interviews. And some small fraction may have symptoms that persist for months or years, a condition known as long Covid. “It seems likely to me that that’s going to sort of be a long-term pattern,” said Juliet Pulliam, an epidemiologist at Stellenbosch University in South Africa.
    “The virus is going to keep evolving,” she added. “And there are probably going to be a lot of people getting many, many reinfections throughout their lives.”
    It’s difficult to quantify how frequently people are reinfected, in part because many infections are now going unreported. Dr. Pulliam and her colleagues have collected enough data in South Africa to say that the rate is higher with Omicron than seen with previous variants. 
    This is not how it was supposed to be. Earlier in the pandemic, experts thought that immunity from vaccination or previous infection would forestall most reinfections.
    The Omicron variant dashed those hopes. Unlike previous variants, Omicron and its many descendants seem to have evolved to partially dodge immunity. That leaves everyone — even those who have been vaccinated multiple times — vulnerable to multiple infections.
    “If we manage it the way that we manage it now, then most people will get infected with it at least a couple of times a year,” said Kristian Andersen, a virologist at the Scripps Research Institute in San Diego. “I would be very surprised if that’s not how it’s going to play out.”
    The new variants have not altered the fundamental usefulness of the Covid vaccines. Most people who have received three or even just two doses will not become sick enough to need medical care if they test positive for the coronavirus. And a booster dose, like a previous bout with the virus, does seem to decrease the chance of reinfection — but not by much.
    At the pandemic’s outset, many experts based their expectations of the coronavirus on influenza, the viral foe most familiar to them. They predicted that, as with the flu, there might be one big outbreak each year, most likely in the fall. The way to minimize its spread would be to vaccinate people before its arrival.
    Instead, the coronavirus is behaving more like four of its closely related cousins, which circulate and cause colds year round. While studying common-cold coronaviruses, “we saw people with multiple infections within the space of a year,” said Jeffrey Shaman, an epidemiologist at Columbia University in New York. 
    If reinfection turns out to be the norm, the coronavirus is “not going to simply be this wintertime once-a-year thing,” he said, “and it’s not going to be a mild nuisance in terms of the amount of morbidity and mortality it causes.”
    Reinfections with earlier variants, including Delta, did occur but were relatively infrequent. But in September, the pace of reinfections in South Africa seemed to pick up and was markedly high by November, when the Omicron variant was identified, Dr. Pulliam said.
    Reinfections in South Africa, as in the United States, may seem even more noticeable because so many have been immunized or infected at least once by now.
    “The perception magnifies what’s actually going on biologically,” Dr. Pulliam said. “It’s just that there are more people who are eligible for reinfection.” 
    The Omicron variant was different enough from Delta, and Delta from earlier versions of the virus, that some reinfections were to be expected. But now, Omicron seems to be evolving new forms that penetrate immune defenses with relatively few changes to its genetic code.
    “This is actually for me a bit of a surprise,” said Alex Sigal, a virologist at the Africa Health Research Institute. “I thought we’ll need a kind of brand-new variant to escape from this one. But in fact, it seems like you don’t.”
    An infection with Omicron produces a weaker immune response, which seems to wane quickly, compared with infections with previous variants. Although the newer versions of the variant are closely related, they vary enough from an immune perspective that infection with one doesn’t leave much protection against the others — and certainly not after three or four months.
    Still, the good news is that most people who are reinfected with new versions of Omicron will not become seriously ill. At least at the moment, the virus has not hit upon a way to fully sidestep the immune system.
    “That’s probably as good as it gets for now,” Dr. Sigal said. “The big danger might come when the variant will be completely different.”
    Each infection may bring with it the possibility of long Covid, the constellation of symptoms that can persist for months or years. It’s too early to know how often an Omicron infection leads to long Covid, especially in vaccinated people.
    To keep up with the evolving virus, other experts said, the Covid vaccines should be updated more quickly, even more quickly than flu vaccines are each year. Even an imperfect match to a new form of the coronavirus will still broaden immunity and offer some protection, they said. “Every single time we think we’re through this, every single time we think we have the upper hand, the virus pulls a trick on us,” Dr. Andersen said. “The way to get it under control is not, ‘Let’s all get infected a few times a year and then hope for the best.’”''',
    '''Covid-19 infections are on the rise, with most US states reporting an increase in cases. According to the US Centers for Disease Control and Prevention, the highly contagious BA.2.1.21 subvariant of Omicron is now the dominant strain of coronavirus nationwide.
    Two years into the pandemic, many aren't sure what to do after testing positive for Covid-19. Should they isolate, and if so, for how long? How important is it to see a doctor? What therapies are available, and who is eligible?
    To help answer these and other questions, I spoke with CNN Medical Analyst Dr. Leana Wen, an emergency physician and professor of health policy and management at the George Washington University Milken Institute School of Public Health. She is also author of "Lifelines: A Doctor's Journey in the Fight for Public Health" and the mother of two young children.''',
  ];

  final dates = <String>[
    'Apr,27,2022',
    'Covid-19 Variants',
    'Lockdown Phase 2',
    'Why are cases rising',
    'US to drop test requ...',
    'Less people in need o...',
    'Covid-19 Disaster Pay...',
    'How often can i be in...',
    'What to do if you are...',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffFFFFFF),
        body: SafeArea(
          child: Column(
            children: [
              Container(
                color: Color(0xffE7F1FF),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 25.0, vertical: 15.0),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Row(
                          children: [
                            Icon(
                              Icons.arrow_back,
                              color: Color(0xff828282),
                              size: 20,
                            ),
                            SizedBox(width: 8),
                            Text(
                              'News',
                              style: GoogleFonts.roboto(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff828282)),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  padding: EdgeInsets.symmetric(horizontal: 15.0),
                  itemCount: headings.length,
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border(
                              bottom:
                                  BorderSide(color: Colors.grey, width: 0.4))),
                      margin: EdgeInsets.symmetric(vertical: 3.0),
                      child: GestureDetector(
                        onTap: () {
                          pushNewScreen(
                            context,
                            screen: SingleNewsPage(
                              dates: dates[index],
                              summary: summarries[index],
                              heading: headings[index],
                            ),
                            withNavBar:
                                true, // OPTIONAL VALUE. True by default.
                            pageTransitionAnimation:
                                PageTransitionAnimation.cupertino,
                          );
                        },
                        child: ListTile(
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                child: Row(children: [
                                  Container(
                                    height: 60,
                                    width: 60,
                                    decoration: BoxDecoration(
                                        color: Colors.blue[100],
                                        borderRadius: BorderRadius.circular(5),
                                        image: DecorationImage(
                                            fit: BoxFit.fitHeight,
                                            image: AssetImage(
                                                'android/assets/variants.jpg'))),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        headings[index],
                                        style: GoogleFonts.roboto(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xff828282)),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.calendar_month,
                                            size: 20,
                                            color: Color(0xff013C8A),
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            dates[index],
                                            style: GoogleFonts.roboto(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500,
                                                color: Color(0xff013C8A)),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ]),
                              ),
                              Icon(
                                Icons.arrow_forward,
                                color: Color(0xff013C8A),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ));
  }
}
