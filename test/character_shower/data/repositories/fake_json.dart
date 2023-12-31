// ignore_for_file: unnecessary_string_escapes, lines_longer_than_80_chars

const mockResponseData = {
  'Abstract': '',
  'AbstractSource': 'Wikipedia',
  'AbstractText': '',
  'AbstractURL': 'https://en.wikipedia.org/wiki/The_Simpsons_characters',
  'Answer': '',
  'AnswerType': '',
  'Definition': '',
  'DefinitionSource': '',
  'DefinitionURL': '',
  'Entity': '',
  'Heading': 'The Simpsons characters',
  'Image': '',
  'ImageHeight': 0,
  'ImageIsLogo': 0,
  'ImageWidth': 0,
  'Infobox': '',
  'Redirect': '',
  'RelatedTopics': [
    {
      'FirstURL': 'https://duckduckgo.com/Apu_Nahasapeemapetilan',
      'Icon': {'Height': '', 'URL': '', 'Width': ''},
      'Result':
          '<a href=\"https://duckduckgo.com/Apu_Nahasapeemapetilan\">Apu Nahasapeemapetilan</a><br>Apu Nahasapeemapetilan is a recurring character in the American animated television series The Simpsons. He is an Indian immigrant proprietor who runs the Kwik-E-Mart, a popular convenience store in Springfield, and is known for his catchphrase, \"Thank you, come again\".',
      'Text':
          'Apu Nahasapeemapetilan - Apu Nahasapeemapetilan is a recurring character in the American animated television series The Simpsons. He is an Indian immigrant proprietor who runs the Kwik-E-Mart, a popular convenience store in Springfield, and is known for his catchphrase, \"Thank you, come again\".'
    },
    {
      'FirstURL': 'https://duckduckgo.com/Apu_Nahasapeemapetilon',
      'Icon': {'Height': '', 'URL': '/i/99b04638.png', 'Width': ''},
      'Result':
          '<a href=\"https://duckduckgo.com/Apu_Nahasapeemapetilon\">Apu Nahasapeemapetilon</a><br>Apu Nahasapeemapetilon is a recurring character in the American animated television series The Simpsons. He is an Indian immigrant proprietor who runs the Kwik-E-Mart, a popular convenience store in Springfield, and is known for his catchphrase, \"Thank you, come again\".',
      'Text':
          'Apu Nahasapeemapetilon - Apu Nahasapeemapetilon is a recurring character in the American animated television series The Simpsons. He is an Indian immigrant proprietor who runs the Kwik-E-Mart, a popular convenience store in Springfield, and is known for his catchphrase, \"Thank you, come again\".'
    },
    {
      'FirstURL': 'https://duckduckgo.com/Barney_Gumble',
      'Icon': {'Height': '', 'URL': '/i/39ce98c0.png', 'Width': ''},
      'Result':
          "<a href=\"https://duckduckgo.com/Barney_Gumble\">Barney Gumble</a><br>Barnard Arnold \"Barney\" Gumble is a recurring character in the American animated TV series The Simpsons. He is voiced by Dan Castellaneta and first appeared in the series premiere episode \"Simpsons Roasting on an Open Fire\". Barney is the town drunk of Springfield and one of Homer Simpson's friends.",
      'Text':
          "Barney Gumble - Barnard Arnold \"Barney\" Gumble is a recurring character in the American animated TV series The Simpsons. He is voiced by Dan Castellaneta and first appeared in the series premiere episode \"Simpsons Roasting on an Open Fire\". Barney is the town drunk of Springfield and one of Homer Simpson's friends."
    },
    {
      'FirstURL': 'https://duckduckgo.com/Bart_Simpson',
      'Icon': {'Height': '', 'URL': '', 'Width': ''},
      'Result':
          '<a href=\"https://duckduckgo.com/Bart_Simpson\">Bart Simpson</a><br>Bartholomew Jojo \"Bart\" Simpson is a fictional character in the American animated television series The Simpsons and part of the Simpson family. He is voiced by Nancy Cartwright and first appeared on television in The Tracey Ullman Show short \"Good Night\" on April 19, 1987.',
      'Text':
          'Bart Simpson - Bartholomew Jojo \"Bart\" Simpson is a fictional character in the American animated television series The Simpsons and part of the Simpson family. He is voiced by Nancy Cartwright and first appeared on television in The Tracey Ullman Show short \"Good Night\" on April 19, 1987.'
    },
    {
      'FirstURL': 'https://duckduckgo.com/Bender_(Futurama)',
      'Icon': {'Height': '', 'URL': '/i/cb4121fd.png', 'Width': ''},
      'Result':
          "<a href=\"https://duckduckgo.com/Bender_(Futurama)\">Bender (Futurama)</a><br>Bender Bending Rodr\u00edguez is one of the main characters in the animated television series Futurama. He was conceived by the series' creators Matt Groening and David X. Cohen, and is voiced by John DiMaggio.",
      'Text':
          "Bender (Futurama) - Bender Bending Rodr\u00edguez is one of the main characters in the animated television series Futurama. He was conceived by the series' creators Matt Groening and David X. Cohen, and is voiced by John DiMaggio."
    },
    {
      'FirstURL': 'https://duckduckgo.com/The_Itchy_%26_Scratchy_Show',
      'Icon': {'Height': '', 'URL': '/i/bc74928e.jpg', 'Width': ''},
      'Result':
          '<a href=\"https://duckduckgo.com/The_Itchy_%26_Scratchy_Show\">The Itchy & Scratchy Show</a><br>The Itchy & Scratchy Show is a show within a show featured on The Simpsons. The show depicts a blue mouse named Itchy, who repeatedly maims or kills a black cat named Scratchy, and is typically presented as 15- to 60-second-long cartoons that are a part of The Krusty the Clown Show.',
      'Text':
          'The Itchy & Scratchy Show - The Itchy & Scratchy Show is a show within a show featured on The Simpsons. The show depicts a blue mouse named Itchy, who repeatedly maims or kills a black cat named Scratchy, and is typically presented as 15- to 60-second-long cartoons that are a part of The Krusty the Clown Show.'
    },
    {
      'FirstURL': 'https://duckduckgo.com/Troy_McClure',
      'Icon': {'Height': '', 'URL': '/i/20433a15.png', 'Width': ''},
      'Result':
          '<a href=\"https://duckduckgo.com/Troy_McClure\">Troy McClure</a><br>Troy McClure is a fictional character in the American animated series The Simpsons. He was originally voiced by Phil Hartman and first appeared in the second season episode \"Homer vs. Lisa and the 8th Commandment.\"',
      'Text':
          'Troy McClure - Troy McClure is a fictional character in the American animated series The Simpsons. He was originally voiced by Phil Hartman and first appeared in the second season episode \"Homer vs. Lisa and the 8th Commandment.\"'
    },
    {
      'FirstURL': 'https://duckduckgo.com/Waylon_Smithers',
      'Icon': {'Height': '', 'URL': '/i/12f25a94.png', 'Width': ''},
      'Result':
          '<a href=\"https://duckduckgo.com/Waylon_Smithers\">Waylon Smithers</a><br>Waylon Joseph Smithers Jr., usually referred to as Mr. Smithers or simply Smithers, is a recurring fictional character in the animated sitcom The Simpsons, voiced by Harry Shearer.',
      'Text':
          'Waylon Smithers - Waylon Joseph Smithers Jr., usually referred to as Mr. Smithers or simply Smithers, is a recurring fictional character in the animated sitcom The Simpsons, voiced by Harry Shearer.'
    },
    {
      'FirstURL': 'https://duckduckgo.com/Wendy_Sage',
      'Icon': {'Height': '', 'URL': '', 'Width': ''},
      'Result':
          '<a href=\"https://duckduckgo.com/Wendy_Sage\">Wendy Sage</a><br>Dr. Wendy Sage is a fictional character on the television animated sitcom The Simpsons. She works as a hypnotherapist and she is also a breast cancer survivor. She visibly has one of her breasts removed.',
      'Text':
          'Wendy Sage - Dr. Wendy Sage is a fictional character on the television animated sitcom The Simpsons. She works as a hypnotherapist and she is also a breast cancer survivor. She visibly has one of her breasts removed.'
    }
  ],
  'Results': [''],
  'Type': 'C',
  'meta': {
    'attribution': null,
    'blockgroup': null,
    'created_date': null,
    'description': 'Wikipedia',
    'designer': null,
    'dev_date': null,
    'dev_milestone': 'live',
    'developer': [
      {'name': 'DDG Team', 'type': 'ddg', 'url': 'http://www.duckduckhack.com'}
    ],
    'example_query': 'nikola tesla',
    'id': 'wikipedia_fathead',
    'is_stackexchange': null,
    'js_callback_name': 'wikipedia',
    'live_date': null,
    'maintainer': {'github': 'duckduckgo'},
    'name': 'Wikipedia',
    'perl_module': 'DDG::Fathead::Wikipedia',
    'producer': null,
    'production_state': 'online',
    'repo': 'fathead',
    'signal_from': 'wikipedia_fathead',
    'src_domain': 'en.wikipedia.org',
    'src_id': 1,
    'src_name': 'Wikipedia',
    'src_options': {
      'directory': '',
      'is_fanon': 0,
      'is_mediawiki': 1,
      'is_wikipedia': 1,
      'language': 'en',
      'min_abstract_length': '20',
      'skip_abstract': 0,
      'skip_abstract_paren': 0,
      'skip_end': '0',
      'skip_icon': 0,
      'skip_image_name': 0,
      'skip_qr': '',
      'source_skip': '',
      'src_info': ''
    },
    'src_url': null,
    'status': 'live',
    'tab': 'About',
    'topic': ['productivity'],
    'unsafe': 0
  }
};
