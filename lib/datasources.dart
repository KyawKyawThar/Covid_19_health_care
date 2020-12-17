import 'package:flutter/material.dart';

Color primaryPurple = Color.fromRGBO(126, 113, 231, 1);

class DataSource {
  static String quote =
      "The world is going through a period of crisis, but whether we look at it as a crisis or as an opportunity to reshape our thinking, depends on us. So use this period as a lesson on how to live life with a concern for all of humankind.";

  static List questionAnswers = [
    {
      "question":
          "What is the difference between self-isolation,self-quarantine and distancing?",
      "answer":
          "Quarantine means restricting activities or separating people who are not ill themselves but may have been exposed to COVID-19. The goal is to prevent spread of the disease at the time when people just develop symptoms.Isolation means separating people who are ill with symptoms of COVID-19 and may be infectious to prevent the spread of the disease.Physical distancing means being physically apart. WHO recommends keeping at least 1-metre (3 feet) distance from others. This is a general measure that everyone should take even if they are well with no known exposure to COVID-19."
    },
    {
      "question": "What is a coronavirus?",
      "answer":
          "Coronaviruses are a large family of viruses which may cause illness in animals or humans.  In humans, several coronaviruses are known to cause respiratory infections ranging from the common cold to more severe diseases such as Middle East Respiratory Syndrome (MERS) and Severe Acute Respiratory Syndrome (SARS). The most recently discovered coronavirus causes coronavirus disease COVID-19."
    },
    {
      "question": "What is COVID-19?",
      "answer":
          "COVID-19 is the infectious disease caused by the most recently discovered coronavirus. This new virus and disease were unknown before the outbreak began in Wuhan, China, in December 2019.COVID-19 is now a pandemic affecting many countries globally."
    },
    {
      "question": "What are the symptoms of COVID-19?",
      "answer":
          "The most common symptoms of COVID-19 are fever, tiredness, and dry cough. Some patients may have aches and pains, nasal congestion, runny nose, sore throat or diarrhea. These symptoms are usually mild and begin gradually. Some people become infected but don’t develop any symptoms and don't feel unwell. Most people (about 80%) recover from the disease without needing special treatment. Around 1 out of every 6 people who gets COVID-19 becomes seriously ill and develops difficulty breathing. Older people, and those with underlying medical problems like high blood pressure, heart problems or diabetes, are more likely to develop serious illness. People with fever, cough and difficulty breathing should seek medical attention."
    },
    {
      "question": "How does COVID-19 spread?",
      "answer":
          "People can catch COVID-19 from others who have the virus. The disease spreads primarily from person to person through small droplets from the nose or mouth, which are expelled when a person with COVID-19 coughs, sneezes, or speaks. These droplets are relatively heavy, do not travel far and quickly sink to the ground. People can catch COVID-19 if they breathe in these droplets from a person infected with the virus. This is why it is important to stay at least 1 meter (3 feet) away from others. These droplets can land on objects and surfaces around the person such as tables, doorknobs and handrails. People can become infected by touching these objects or surfaces, then touching their eyes, nose or mouth. This is why it is important to wash your hands regularly with soap and water or clean with alcohol-based hand rub.COVID-19 can also be spread as a result of medical procedures during which infected persons can create a fine respiratory sprays called aerosols. Aerosols containing the virus can hang in the air for longer periods and can be breathed in by those standing near-by, and transmit the virus. These aerosol generating events are not common causes of transmission.WHO is assessing ongoing research on the ways that COVID-19 is spread and will continue to share updated findings.WHO is assessing ongoing research on the ways that COVID-19 is spread and will continue to share updated findings.WHO is assessing ongoing research on the ways that COVID-19 is spread and will continue to share updated findings."
    },
    {
      "question":
          "What can i do to protect myself and prevent the spread of disease?",
      "answer":
          "Stay aware of the latest information on the COVID-19 outbreak, available on the WHO website and through your national and local public health authority. Many countries around the world have seen cases of COVID-19 and several have seen outbreaks. Authorities in China and some other countries have succeeded in slowing or stopping their outbreaks. However, the situation is unpredictable so check regularly for the latest news."
    },
    {
      "question": "Should I worry about COVID-19?",
      "answer":
          "Illness due to COVID-19 infection is generally mild, especially for children and young adults. However, it can cause serious illness: about 1 in every 5 people who catch it need hospital care. It is therefore quite normal for people to worry about how the COVID-19 outbreak will affect them and their loved ones.We can channel our concerns into actions to protect ourselves, our loved ones and our communities. First and foremost among these actions is regular and thorough hand-washing and good respiratory hygiene. Secondly, keep informed and follow the advice of the local health authorities including any restrictions put in place on travel, movement and gatherings."
    },
    {
      "question":
          "Are there any medicines or therapies than can prevent or cure COVID-19?",
      "answer":
          "While some western, traditional or home remedies may provide comfort and alleviate symptoms of COVID-19, there is no evidence that current medicine can prevent or cure the disease. WHO does not recommend self-medication with any medicines, including antibiotics, as a prevention or cure for COVID-19. However, there are several ongoing clinical trials that include both western and traditional medicines. WHO will continue to provide updated information as soon as clinical findings are available."
    },
    {
      "question": "Is there a vaccine,drug or treatment for COVID-19?",
      "answer":
          "Not yet. To date, there is no vaccine and no specific antiviral medicine to prevent or treat COVID-2019. However, those affected should receive care to relieve symptoms. People with serious illness should be hospitalized. Most patients recover thanks to supportive care.Possible vaccines and some specific drug treatments are under investigation. They are being tested through clinical trials. WHO is coordinating efforts to develop vaccines and medicines to prevent and treat COVID-19.The most effective ways to protect yourself and others against COVID-19 are to frequently clean your hands, cover your cough with the bend of elbow or tissue, and maintain a distance of at least 1 meter (3 feet) from people who are coughing or sneezing."
    },
    {
      "question":
          "Can the virus that causes COVID-19 be transmitted through the air?",
      "answer":
          "Studies to date suggest that the virus that causes COVID-19 is mainly transmitted through contact with respiratory droplets rather than through the air"
    },
    {
      "question": "Can CoVID-19 be caught from a person who has no symptoms?",
      "answer":
          "The main way the disease spreads is through respiratory droplets expelled by someone who is coughing. The risk of catching COVID-19 from someone with no symptoms at all is very low. However, many people with COVID-19 experience only mild symptoms. This is particularly true at the early stages of the disease. It is therefore possible to catch COVID-19 from someone who has, for example, just a mild cough and does not feel ill.  WHO is assessing ongoing research on the period of transmission of COVID-19 and will continue to share updated findings.    "
    },
    {
      "question":
          "Can I catch COVID-19 from the feces of someone with the disease?",
      "answer":
          "The risk of catching COVID-19 from the feces of an infected person appears to be low. While initial investigations suggest the virus may be present in feces in some cases, spread through this route is not a main feature of the outbreak. WHO is assessing ongoing research on the ways COVID-19 is spread and will continue to share new findings. Because this is a risk, however, it is another reason to clean hands regularly, after using the bathroom and before eating."
    },
    {
      "question": "How likely am I to catch COVID-19?",
      "answer":
          "The risk depends on where you  are - and more specifically, whether there is a COVID-19 outbreak unfolding there.\nFor most people in most locations the risk of catching COVID-19 is still low. However, there are now places around the world (cities or areas) where the disease is spreading. For people living in, or visiting, these areas the risk of catching COVID-19 is higher. Governments and health authorities are taking vigorous action every time a new case of COVID-19 is identified. Be sure to comply with any local restrictions on travel, movement or large gatherings. Cooperating with disease control efforts will reduce your risk of catching or spreading COVID-19.\nCOVID-19 outbreaks can be contained and transmission stopped, as has been shown in China and some other countries. Unfortunately, new outbreaks can emerge rapidly. It’s important to be aware of the situation where you are or intend to go. WHO publishes daily updates on the COVID-19 situation worldwide."
    },
    {
      "question": "Who is at risk of developing severe illness?",
      "answer":
          "While we are still learning about how COVID-2019 affects people, older persons and persons with pre-existing medical conditions (such as high blood pressure, heart disease, lung disease, cancer or diabetes)  appear to develop serious illness more often than others. "
    },
    {
      "question": "Should I wear a mask to protect myself?",
      "answer":
          "Only wear a mask if you are ill with COVID-19 symptoms (especially coughing) or looking after someone who may have COVID-19. Disposable face mask can only be used once. If you are not ill or looking after someone who is ill then you are wasting a mask. There is a world-wide shortage of masks, so WHO urges people to use masks wisely.\nWHO advises rational use of medical masks to avoid unnecessary wastage of precious resources and mis-use of masks\nThe most effective ways to protect yourself and others against COVID-19 are to frequently clean your hands, cover your cough with the bend of elbow or tissue and maintain a distance of at least 1 meter (3 feet) from people who are coughing or sneezing"
    },
    {
      "question": "How to put on, use, take off and dispose on a mask?",
      "answer":
          "Remember, a mask should only be used by health workers, care takers, and individuals with respiratory symptoms, such as fever and cough.Before touching the mask, clean hands with an alcohol-based hand rub or soap and water.Take the mask and inspect it for tears or holes.rient which side is the top side (where the metal strip is).Ensure the proper side of the mask faces outwards (the coloured side).Place the mask to your face. Pinch the metal strip or stiff edge of the mask so it moulds to the shape of your nose.Pull down the mask’s bottom so it covers your mouth and your chin.After use, take off the mask; remove the elastic loops from behind the ears while keeping the mask away from your face and clothes, to avoid touching potentially contaminated surfaces of the mask.Discard the mask in a closed bin immediately after use.Perform hand hygiene after touching or discarding the mask – Use alcohol-based hand rub or, if visibly soiled, wash your hands with soap and water."
    },
    {
      "question": "How long is the incubation period of COVID-19?",
      "answer":
          "The “incubation period” means the time between catching the virus and beginning to have symptoms of the disease. Most estimates of the incubation period for COVID-19 range from 1-14 days, most commonly around five days. These estimates will be updated as more data become available."
    },
    {
      "question":
          "Can humans become infect with the COVID-19 from an animal source?",
      "answer":
          "Coronaviruses are a large family of viruses that are common in animals. Occasionally, people get infected with these viruses which may then spread to other people. For example, SARS-CoV was associated with civet cats and MERS-CoV is transmitted by dromedary camels. Possible animal sources of COVID-19 have not yet been confirmed.To protect yourself, such as when visiting live animal markets, avoid direct contact with animals and surfaces in contact with animals. Ensure good food safety practices at all times. Handle raw meat, milk or animal organs with care to avoid contamination of uncooked foods and avoid consuming raw or undercooked animal products."
    },
    {
      "question": "How long does the virus survive on surface?",
      "answer":
          "It is not certain how long the virus that causes COVID-19 survives on surfaces, but it seems to behave like other coronaviruses. Studies suggest that coronaviruses (including preliminary information on the COVID-19 virus) may persist on surfaces for a few hours or up to several days. This may vary under different conditions (e.g. type of surface, temperature or humidity of the environment).f you think a surface may be infected, clean it with simple disinfectant to kill the virus and protect yourself and others. Clean your hands with an alcohol-based hand rub or wash them with soap and water. Avoid touching your eyes, mouth, or nose."
    },
    {
      "question":
          "Is it safe to recive a package from any area where COVID-19 has been reported?",
      "answer":
          "The following measures ARE NOT effective against COVID-2019 and can be harmful:Smoking,Wearing multiple masks,Taking antibiotics.In any case, if you have fever, cough and difficulty breathing seek medical care early to reduce the risk of developing a more severe infection and be sure to share your recent travel history with your health care provider."
    },
    {
      "question": "Is the source of the coronavirus causing COVID-19 known?",
      "answer":
          "Currently, the source of SARS-CoV-2, the coronavirus (CoV) causing COVID-19 is unknown. All available evidence suggests that SARS-CoV-2 has a natural animal origin and is not a constructed virus. SARS-CoV-2 virus most probably has its ecological reservoir in bats. SARS-CoV-2, belongs to a group of genetically related viruses, which also include SARS-CoV and a number of other CoVs isolated from bats populations. MERS-CoV also belongs to this group, but is less closely related."
    },
    {
      "question": "How did the first human SARS-CoV-2 infection occur?",
      "answer":
          "The first human cases of COVID-19 were identified in Wuhan City, China in December 2019. At this stage, it is not possible to determine precisely how humans in China were initially infected with SARS-CoV-2.However, SARS-CoV, the virus which caused the SARS outbreak in 2003, jumped from an animal reservoir (civet cats, a farmed wild animal) to humans and then spread between humans. In a similar way, it is thought that SARS-CoV-2 jumped the species barrier and initially infected humans, but more likely through an intermediate host, that is another animal species more likely to be handled by humans - this could be a domestic animal, a wild animal, or a domesticated wild animal and, as of yet, has not been identified.Until the source of this virus is identified and controlled, there is a risk of reintroduction of the virus in the human population and the risk of new outbreaks like the ones we are currently experiencing."
    },
    {
      "question": "Is COVID-19 airbone?",
      "answer":
          "The virus that causes COVID-19 is mainly transmitted through droplets generated when an infected person coughs, sneezes, or speaks. These droplets are too heavy to hang in the air. They quickly fall on floors or surfaces. You can be infected by breathing in the virus if you are within 1 metre of a person who has COVID-19, or by touching a contaminated surface and then touching your eyes, nose or mouth before washing your hands."
    },
    {
      "question":
          "Are antibiotics effective in preventing or treating the COVID-19?",
      "answer":
          "No. Antibiotics do not work against viruses, they only work on bacterial infections. COVID-19 is caused by a virus, so antibiotics do not work. Antibiotics should not be used as a means of prevention or treatment of COVID-19. They should only be used as directed by a physician to treat a bacterial infection. "
    }
  ];
}
