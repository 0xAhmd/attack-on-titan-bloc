String getDescription(String name) {
  // print('Looking up description for: ${name.toLowerCase()}');
  Map<String, String> descriptions = {
    'marlo freudenberg':
        '"Marlo Freudenberg, a righteous and idealistic soldier, transitioned from the Military Police Regiment to the Scout Regiment, driven by his passion for justice and desire to make a real difference, though his journey revealed the complexities of human nature and flawed institutions."',
    'gordon':
        'A hesitant yet determined soldier, Gordon was a recruit of the Scout Regiment who joined after the crowning of Historia Reiss. Though initially shaken by the overwhelming loss of the veteran members of the Scouts, he chose to stand alongside his comrades in the face of certain death during the mission to retake Wall Maria. Gordon\'s loyalty and willingness to follow through on Erwin\'s bold plan, even in the face of fear, marked him as a soldier willing to sacrifice everything for humanity’s survival, despite the grim reality of their battle against the Titans.',
    'sandra':
        'A brave and dedicated recruit of the Scout Regiment, Sandra was a dependable soldier who faced the horrors of battle with unwavering resolve. Despite her fears, she demonstrated remarkable courage and loyalty, joining her comrades in a desperate charge against the Beast Titan during the mission to retake Wall Maria. Her determination and sacrifice epitomized the selflessness of the Scouts in their fight for humanit\'s survival.',
    'lobov':
        'A disciplined and dedicated soldier, Lobov was a former Garrison commander who later joined the Scout Regiment. Known for his rigid personality and deep respect for military duty, he showed courage in protecting the airship during the Scouts\' retreat from Liberio. His commitment to his comrades was unwavering, even in the face of danger, though his life was tragically cut short when he was shot by a young civilian during the retreat. Lobov’s transition from the Garrison to the Scouts marked a new chapter in his life, showcasing his loyalty to the cause and willingness to fight for humanity\'s survival.',
    'klaus':
        'Klaus had a straightforward personality, questioning Grisha Yeager\'s loyalty to the Survey CorpsDuring the Return to Shiganshina arc, Klaus\'s team was tasked with protecting the horses. They were killed by the Beast Titan\'s boulder barrage Klaus\'s name is a shortened form of "Nikolaus," meaning "victory for the people."',
    'dirk':
        "Dirk, a calm and serious team leader in the Scout Regiment, led his squad during the mission to retake Wall Maria, ultimately sacrificing his life while protecting the scouts' horses from the Beast Titan's attack.",
    'dieter':
        'Dieter, a passionate but reckless soldier in the Scout Regiment, struggled with the loss of his friends and faced the consequences of his actions during the 57th Exterior Scouting Mission.',
    'tomas':
        'A dependable and strong-willed soldier, Tomas was known for his physical and mental resilience. He earned the trust of his superiors, including Miche Zacharius and Nanaba, and demonstrated remarkable dedication during critical moments. Tomas’ courage was evident when he rode for hours on horseback to urgently deliver news of Wall Rose\'s breach to Commander Erwin. His efforts to inform the commanders about the incoming Titans highlighted his commitment to his comrades and his duty. Tomas\' legacy lives on through the memories of his fellow soldiers, particularly as Hange reflects on his sacrifice during times of conflict.',
    'armin arlelt':
        'A thoughtful and strategic thinker, Armin is often seen as the brains of the trio of Eren and Mikasa. Though physically weaker, his intelligence and bravery prove crucial to many of the missions undertaken by the Survey Corps.',
    'mikasa ackermann':
        'A fiercely loyal and skilled soldier, Mikasa is Eren\'s adoptive sister and one of the strongest members of the Survey Corps. Her protective nature and exceptional combat abilities make her an invaluable ally in the fight against the Titans.',
    'levi ackermann':
        'Known as humanity\'s strongest soldier, Levi is a cold, efficient, and highly skilled warrior who leads his elite squad in the Survey Corps. His quiet demeanor masks a deep sense of responsibility and commitment to protecting humanity.',
    'erwin smith':
        'The charismatic and determined leader of the Survey Corps, Erwin is a visionary who is willing to sacrifice everything for the future of humanity. His leadership inspires those around him, even in the face of overwhelming odds.',
    'jean kirschtein':
        'Initially a cynical and self-preserving soldier, Jean matures into a more thoughtful and reliable leader. His tactical mindset and strong sense of justice make him a valuable member of the Survey Corps.',
    'sasha braus':
        'Known for her love of food and her quick reflexes, Sasha is a skilled marksman and an agile fighter. Her kind-hearted nature contrasts with the intense battles she faces, but she always rises to the occasion when her comrades need her.',
    'conny springer':
        'A laid-back and easy-going member of the Survey Corps, Connie is loyal to his friends and teammates. Though he is often lighthearted, he proves to be a brave and dependable soldier when it matters most.',
    'hange zoë':
        'A brilliant and eccentric researcher, Hange is obsessed with studying Titans. Known for their curiosity and unorthodox methods, Hange is a compassionate and dedicated leader who plays a crucial role in humanity’s fight against the Titans.',
    'varis':
        'Varis, a loyal Scout Regiment soldier, was tragically transformed into a Pure Titan by Zeke Jaeger\'s spinal fluid and ultimately killed by Levi Ackermann after being turned against him.',
    'marlene':
        "Marlene, a cheerful and close friend of Hange Zoë, was a team leader in the Scout Regiment and tragically killed by the Beast Titan during the mission to reclaim Wall Maria.",
    'buchwald':
        "Buchwald, the horse ridden by Jean during the 57th Exterior Scouting Mission, was a tall, dark brown horse with a black mane, known for his speed and endurance.",
    'attack titan':
        'The Attack Titan, wielded by Eren Yeager, is a powerful titan with immense strength and agility. It is known for its aggressive and relentless fighting style, capable of regenerating quickly and exhibiting great endurance in battle.',
    'founding titan':
        "The Founding Titan is one of the Nine Titans and holds the power to control other titans, alter memories, and manipulate the Eldian population. It is an immensely powerful and mysterious titan that can be accessed by those with royal blood, including Eren Yeager after gaining its power.",
    'war hammer titan':
        "The War Hammer Titan is one of the Nine Titans, known for its ability to create hard, crystallized structures and weapons from its titan form. Its user, Lara Tybur, was able to control the War Hammer Titan remotely through a crystal-like structure within its body.",
    'armored titan':
        "The Armored Titan, wielded by Reiner Braun, is a titan encased in a tough, armor-like layer that grants it great durability and resistance to attacks. The titan is capable of charging at high speeds and has formidable defensive capabilities.",
    'beast titan':
        "The Beast Titan, controlled by Zeke Yeager, is a titan with long arms and a powerful throwing ability. It has the unique power to control titans through the scream of its user and is known for its intelligence and strategic thinking.",
    'female titan':
        "The Female Titan, wielded by Annie Leonhart, is a versatile and agile titan with enhanced speed and combat capabilities. It is capable of using the hardening ability to create strong defensive structures and has remarkable strength and endurance.",
    'cart titan':
        "The Cart Titan is a titan that specializes in carrying large amounts of equipment and resources, often used for logistical support. It is known for its high endurance and ability to move for long periods of time without tiring. Its user, Pieck Finger, uses it for both reconnaissance and combat."
  };

  String normalizedName = name.toLowerCase().trim();

  return descriptions[normalizedName.toLowerCase()] ??
      'Description not available for this character.';
}
