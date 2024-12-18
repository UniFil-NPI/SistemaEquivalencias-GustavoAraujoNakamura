-- #grades

INSERT INTO grades (titulo) VALUES
('Grade 2017 CC'),
('Grade 2019 CC'),
('Grade Cubo CC'),
('ADS Grade 5000');

-- #GRADE 2017 - DISCIPLINAS

INSERT INTO disciplinas (codigo, titulo, periodo, modalidade) VALUES
('COMP3019', 'Engenharia de Software I', 4, 'PRESENCIAL'),
('COMP3010', 'Introdução à Computação e Teoria Geral de Sistemas@', 2, 'EAD'),
('COMP3006', 'Técnicas de Programação I', 1, 'PRESENCIAL'),
('COMP3005', 'Robótica', 1, 'PRESENCIAL'),
('COMP3004', 'Projeto Interdisciplinar I', 1, 'PRESENCIAL'),
('COMP3002', 'Laboratório de Computação I', 1, 'PRESENCIAL'),
('COMP3007', 'Arquitetura e Organização de Computadores', 2, 'PRESENCIAL'),
('COMP3011', 'Linguagem de Programação I', 2, 'PRESENCIAL'),
('COMP3003', 'Matemática Discreta', 1, 'PRESENCIAL'),
('COMP3016', 'Projeto Interdisciplinar II', 3, 'PRESENCIAL'),
('COMP3014', 'Laboratório de Computação II', 3, 'PRESENCIAL'),
('COMP3020', 'Grafos@', 4, 'EAD'),
('COMP3017', 'Técnicas de Programação II', 3, 'PRESENCIAL'),
('COMP3008', 'Elementos de Cálculo e Álgebra Linear', 2, 'PRESENCIAL'),
('COMP3038', 'Gerenciamento de Projetos@', 7, 'EAD'),
('COMP3035', 'Projeto Interdisciplinar III', 6, 'PRESENCIAL'),
('COMP3029', 'Sistemas Digitais', 8, 'PRESENCIAL'),
('COMP3025', 'Computação Gráfica', 5, 'PRESENCIAL'),
('COMP3012', 'Cálculo Diferencial e Integral', 3, 'PRESENCIAL'),
('COMP3018', 'Banco de Dados I', 4, 'PRESENCIAL'),
('COMP3021', 'Linguagem de Programação II', 4, 'PRESENCIAL'),
('COMP3044', 'Projeto Interdisciplinar IV', 8, 'PRESENCIAL'),
('COMP3023', 'Sistemas Operacionais', 4, 'PRESENCIAL'),
('COMP3024', 'Banco de Dados II', 5, 'PRESENCIAL'),
('COMP3031', 'Cálculo Numérico', 6, 'PRESENCIAL'),
('COMP3034', 'Laboratório de Computação III', 6, 'PRESENCIAL'),
('COMP3033', 'Interação Humano Computador- IHC', 6, 'PRESENCIAL'),
('COMP3015', 'Metodologia de Pesquisa@', 3, 'EAD'),
('COMP3037', 'Estágio Supervisionado I', 7, 'PRESENCIAL'),
('COMP3041', 'Empreendedorismo@', 8, 'EAD'),
('COMP3013', 'Estatística', 3, 'PRESENCIAL'),
('COMP3022', 'Linguagens Formais e Autômatos', 4, 'PRESENCIAL'),
('COMP3026', 'Engenharia de Software II', 5, 'PRESENCIAL'),
('COMP3042', 'Estágio Supervisionado II', 8, 'PRESENCIAL'),
('COMP3028', 'Redes de Computadores', 5, 'PRESENCIAL'),
('COMP3027', 'Inteligência Artificial', 5, 'PRESENCIAL'),
('COMP3043', 'Noções de Direito@', 8, 'EAD'),
('COMP3040', 'Tópicos Especiais em Engenharia de Software', 7, 'PRESENCIAL'),
('COMP3001', 'Introdução à Administração@', 1, 'EAD'),
('COMP3032', 'Compiladores', 6, 'PRESENCIAL'),
('COMP3045', 'Sociologia@', 8, 'EAD'),
('COMP3030', 'Trabalho de Conclusão de Curso I', 5, 'PRESENCIAL'),
('COMP3036', 'Trabalho de Conclusão de Curso II', 6, 'PRESENCIAL'),
('COMP3039', 'Tópicos Avançados em Computação', 7, 'PRESENCIAL');

-- #GRADE 2019 - DISCIPLINAS

INSERT INTO disciplinas (codigo, titulo, carga_horaria, periodo, modalidade) VALUES
('COMP4001', 'Desenvolvimento de Aplicativos Móveis', 60, 1, 'PRESENCIAL'),
('COMP4002', 'Gerência de Requisitos', 60, 1, 'PRESENCIAL'),
('COMP4003', 'Introdução à Computação e Teoria Geral de Sistemas@', 30, 1, 'EAD'),
('COMP4004', 'Lógica de Programação e Algoritmos', 60, 1, 'PRESENCIAL'),
('COMP4005', 'Programação de Robótica Móvel', 60, 1, 'PRESENCIAL'),
('COMP4006', 'Projeto Interdisciplinar I', 30, 1, 'PRESENCIAL'),
('COMP4011', 'Projeto Interdisciplinar II', 30, 2, 'PRESENCIAL'),
('COMP4007', 'Algoritmos e Estruturas de Dados', 60, 2, 'PRESENCIAL'),
('COMP4008', 'Arquitetura e Organização de Computadores', 60, 2, 'PRESENCIAL'),
('COMP4009', 'Linguagem de Programação Orientada a Objetos', 60, 2, 'PRESENCIAL'),
('COMP4010', 'Matemática Discreta', 60, 2, 'PRESENCIAL'),
('COMP4016', 'Projeto Interdisciplinar III', 30, 3, 'PRESENCIAL'),
('COMP4022', 'Projeto Interdisciplinar IV', 30, 4, 'PRESENCIAL'),
('COMP4012', 'Análise e Projeto de Algoritmos', 60, 3, 'PRESENCIAL'),
('COMP4013', 'Análise e Projeto Orientados a Objetos', 60, 3, 'PRESENCIAL'),
('COMP4014', 'Elementos de Cálculo e Álgebra Linear', 60, 3, 'PRESENCIAL'),
('COMP4015', 'Gerenciamento de Projetos', 60, 3, 'PRESENCIAL'),
('COMP4030', 'Projeto Interdisciplinar V', 30, 5, 'PRESENCIAL'),
('COMP4037', 'Projeto Interdisciplinar VI', 30, 6, 'PRESENCIAL'),
('COMP4017', 'Sistemas Digitais', 60, 3, 'PRESENCIAL'),
('COMP4018', 'Computação Gráfica', 60, 4, 'PRESENCIAL'),
('COMP4019', 'Cálculo Diferencial e Integral', 60, 4, 'PRESENCIAL'),
('COMP4020', 'Introdução a Banco de Dados', 60, 4, 'PRESENCIAL'),
('COMP4021', 'Paradigmas de Linguagens de Programação', 60, 4, 'PRESENCIAL'),
('COMP4030', 'Projeto Interdisciplinar VII', 30, 5, 'PRESENCIAL'),
('COMP4037', 'Projeto Interdisciplinar VIII', 30, 6, 'PRESENCIAL'),
('COMP4023', 'Sistemas Operacionais', 60, 4, 'PRESENCIAL'),
('COMP4024', 'Banco de Dados Avançado', 60, 5, 'PRESENCIAL'),
('COMP4025', 'Cálculo Numérico', 60, 5, 'PRESENCIAL'),
('COMP4026', 'Desenvolvimento Web', 60, 5, 'PRESENCIAL'),
('COMP4027', 'Interação Humano Computador', 60, 5, 'PRESENCIAL'),
('COMP4028', 'Metodologia de Pesquisa@', 60, 5, 'EAD'),
('COMP4029', 'Projeto e Desenvolvimento de Sistema I', 30, 5, 'PRESENCIAL'),
('COMP4097', 'Estágio Supervisionado I', 60, 5, 'PRESENCIAL'),
('COMP4031', 'Práticas de Extensão I', 160, 5, 'PRESENCIAL'),
('COMP4032', 'Empreendedorismo@', 60, 6, 'EAD'),
('COMP4033', 'Estatística', 60, 6, 'PRESENCIAL'),
('COMP4034', 'Linguagens Formais e Autômatos', 30, 6, 'PRESENCIAL'),
('COMP4035', 'Metodologias Ágeis', 60, 6, 'PRESENCIAL'),
('COMP4036', 'Projeto e Desenvolvimento de Sistema II', 30, 6, 'PRESENCIAL'),
('COMP4098', 'Estágio Supervisionado II', 60, 6, 'PRESENCIAL'),
('COMP4038', 'Práticas de Extensão II', 160, 6, 'PRESENCIAL'),
('COMP4039', 'Redes de Computadores', 60, 6, 'PRESENCIAL'),
('COMP4040', 'Ciência de Dados e Aprendizagem de Máquina', 60, 7, 'PRESENCIAL'),
('COMP4041', 'Desenvolvimento com DevOps', 30, 7, 'PRESENCIAL'),
('COMP4042', 'Inteligência Artificial', 60, 7, 'PRESENCIAL'),
('COMP4043', 'Noções de Direito e Ética@', 60, 7, 'EAD'),
('COMP4044', 'Sistemas Cyber-Físicos e Internet das Coisas', 30, 7, 'PRESENCIAL'),
('COMP4046', 'Tópicos Especiais em Engenharia de Software', 30, 7, 'PRESENCIAL'),
('COMP4047', 'Administração de Sistemas Empresariais@', 60, 8, 'EAD'),
('COMP4048', 'Compiladores', 60, 8, 'PRESENCIAL'),
('COMP4049', 'Computação em Nuvem', 30, 8, 'PRESENCIAL'),
('COMP4050', 'Métricas de Software', 30, 8, 'PRESENCIAL'),
('COMP4051', 'Programação de Jogos', 60, 8, 'PRESENCIAL'),
('COMP4052', 'Sociologia@', 60, 8, 'EAD'),
('COMP4045', 'Trabalho de Conclusão de Curso I', 30, 7, 'PRESENCIAL'),
('COMP4053', 'Trabalho de Conclusão de Curso II', 30, 8, 'PRESENCIAL'),
('COMP4054', 'Tópicos Avançados em Computação', 30, 8, 'PRESENCIAL');

-- #GRADE CUBO CC

INSERT INTO disciplinas (codigo, titulo, carga_horaria, tipo, modalidade) VALUES
('COAP230027', 'Desenvolvimento de Aplicativos Móveis: Prototipação de aplicações móveis', 15, 'Core', 'PRESENCIAL'),
('COAP230026', 'Desenvolvimento de Aplicativos Móveis: Criação de API Rest básica', 15, 'Core', 'PRESENCIAL'),
('COAP230013', 'Desenvolvimento de Aplicativos Móveis: Criação de API Rest avançada', 15, 'Flex', 'PRESENCIAL'),
('COAP230033', 'Desenvolvimento de Aplicativos Móveis: Criando um APP avançado com sincronismo', 30, 'Flex', 'PRESENCIAL'),
('COAP230034', 'Desenvolvimento de Aplicativos Móveis: Integração de aplicativo com GoogleMaps', 15, 'Flex', 'PRESENCIAL'),
('COAP230029', 'Desenvolvimento Web: Desenvolvimento Web com MVC', 30, 'Core', 'PRESENCIAL'),
('COAP230011', 'Desenvolvimento Web: Prática em desenvolvimentos WEB@', 30, 'Flex', 'EAD'),
('COAP230012', 'Desenvolvimento Web: Segurança no desenvolvimento WEB@', 15, 'Flex', 'EAD'),
('COAP230030', 'Desenvolvimento Web: Front-end', 15, 'Core', 'PRESENCIAL'),
('COAP230031', 'Desenvolvimento Web: Back-end', 15, 'Core', 'PRESENCIAL'),
('COAP230032', 'Desenvolvimento Web: Criação de sites responsivos', 15, 'Flex', 'PRESENCIAL'),
('COAP230028', 'Desenvolvimento Web: Introdução ao HTML, CSS e Javascript', 30, 'Core', 'PRESENCIAL'),
('EGSW221005', 'Gerência de Requisitos: Artefatos de Software', 15, 'Core', 'PRESENCIAL'),
('EGSW221001', 'Gerência de Requisitos: Introdução a Engenharia de Software', 15, 'Flex', 'PRESENCIAL'),
('EGSW221006', 'Gerência de Requisitos: Processo e Desenvolvimento de Software@', 15, 'Flex', 'EAD'),
('EGSW221003', 'Gerência de Requisitos: Modelagem de Processo de Negócios', 15, 'Flex', 'PRESENCIAL'),
('EGSW230028', 'Arquitetura de Software: Estilos arquiteturais', 30, 'Core', 'PRESENCIAL'),
('FCOM220003', 'Introdução à Computação e Teoria Geral de Sistemas: Introdução à Computação', 15, 'Core', 'PRESENCIAL'),
('FCOM221002', 'Introdução à Computação e Teoria Geral de Sistemas: Hierarquia de Sistemas', 15, 'Core', 'PRESENCIAL'),
('ALLP221001', 'Lógica de Programação e Algoritmos: Introdução a lógica de programação', 15, 'Core', 'PRESENCIAL'),
('ALLP221002', 'Lógica de Programação e Algoritmos: Estruturas de decisão e repetição', 15, 'Core', 'PRESENCIAL'),
('ALLP221003', 'Lógica de Programação e Algoritmos: Estrutura de dados estáticas', 15, 'Core', 'PRESENCIAL'),
('ALLP221004', 'Lógica de Programação e Algoritmos: Sub-rotinas', 15, 'Core', 'PRESENCIAL'),
('COAP221003', 'Programação para robótica Móvel: Introdução à robótica', 30, 'Core', 'PRESENCIAL'),
('COAP221008', 'Programação para robótica Móvel: Robótica Aplicada', 30, 'Core', 'PRESENCIAL'),
('PRIN221001', 'Projeto Interdisciplinar I: PI I', 15, 'Core', 'PRESENCIAL'),
('PRIN221002', 'Projeto Interdisciplinar I: PI II', 15, 'Core', 'PRESENCIAL'),
('PRIN221003', 'Projeto Interdisciplinar II: PI III', 15, 'Core', 'PRESENCIAL'),
('PRIN221004', 'Projeto Interdisciplinar II: PI IV', 15, 'Core', 'PRESENCIAL'),
('ALLP221006', 'Algoritmos e Estrutura de Dados: Introdução a estrutura de dados', 30, 'Core', 'PRESENCIAL'),
('ALLP221008', 'Algoritmos e Estrutura de Dados: Árvores', 30, 'Core', 'PRESENCIAL'),
('FCOM221003', 'Arquitetura e Organização de Computadores: Organização de Sistemas de Computadores', 30, 'Core', 'PRESENCIAL'),
('FCOM221004', 'Arquitetura e Organização de Computadores: Nível Lógico Digital e Arquitetura do conj. de instruções', 30, 'Core', 'PRESENCIAL'),
('ALLP230012', 'Linguagem de Programação Orientada a Objetos: Introdução a linguagem de programação orientada a objetos', 30, 'Core', 'PRESENCIAL'),
('ALLP230008', 'Linguagem de Programação Orientada a Objetos: Programação orientada a objetos', 30, 'Core', 'PRESENCIAL'),
('MATE221001', 'Matemática Discreta: Lógica matemática', 30, 'Core', 'PRESENCIAL'),
('MATE221002', 'Matemática Discreta: Sentenças abertas e Quantificadores', 15, 'Core', 'PRESENCIAL'),
('MATE230018', 'Matemática Discreta: Relações e Indução Matemática', 15, 'Core', 'PRESENCIAL'),
('PRIN220001', 'Projeto Interdisciplinar III: PI V', 15, 'Core', 'PRESENCIAL'),
('PRIN220003', 'Projeto Interdisciplinar III: PI VI', 15, 'Core', 'PRESENCIAL'),
('PRIN220010', 'Projeto Interdisciplinar IV: PI VII', 15, 'Core', 'PRESENCIAL'),
('PRIN220004', 'Projeto Interdisciplinar IV: PI VIII', 15, 'Core', 'PRESENCIAL'),
('ALLP230011', 'Análise e Projeto de Algoritmos: Introdução ao Teste de Software', 15, 'Core', 'PRESENCIAL'),
('ALLP230014', 'Análise e Projeto de Algoritmos: Introdução à recursividade', 15, 'Core', 'PRESENCIAL'),
('ALLP230015', 'Análise e Projeto de Algoritmos: Complexidade de algoritmos', 15, 'Core', 'PRESENCIAL'),
('ALLP230007', 'Algoritmos e Estrutura de Dados: Grafos', 15, 'Core', 'PRESENCIAL'),
('EGSW230031', 'Análise e Projetos Orientado a Objetos: Introdução a UML com Caso de Uso', 15, 'Core', 'PRESENCIAL'),
('EGSW230005', 'Análise e Projetos Orientado a Objetos: Modelando um software com UML', 30, 'Core', 'PRESENCIAL'),
('EGSW230033', 'Análise e Projetos Orientado a Objetos: Rastreabilidade dos diagramas da UML', 15, 'Flex', 'PRESENCIAL'),
('MATE230021', 'Elementos de Cálculo e Álgebra Linear: Tópicos de Álgebra Linear', 30, 'Core', 'PRESENCIAL'),
('MATE230020', 'Elementos de Cálculo e Álgebra Linear: Transformações lineares, Autovalor e Autovetor', 15, 'Core', 'PRESENCIAL'),
('MATE230022', 'Elementos de Cálculo e Álgebra Linear: Limites e Continuidade', 15, 'Core', 'PRESENCIAL'),
('MAPC230001', 'Elementos de Cálculo e Álgebra Linear: Matemática para Data Science', 30, 'Flex', 'EAD'),
('GNES230002', 'Gerenciamento de Projetos: Fundamentos e Grupos de Processos para Gestão de Projetos', 30, 'Flex', 'EAD'),
('GNES230003', 'Gerenciamento de Projetos: Gestão de Projetos com PMBOK', 30, 'Core', 'PRESENCIAL'),
('GNES230038', 'Gerenciamento de Projetos: Ferramentas para Metodologias Ágeis', 30, 'Core', 'PRESENCIAL'),
('PRIN220006', 'Projeto Interdisciplinar V: PI IX', 15, 'Core', 'PRESENCIAL'),
('PRIN220007', 'Projeto Interdisciplinar V: PI X', 15, 'Core', 'PRESENCIAL'),
('PRIN220008', 'Projeto Interdisciplinar VI: PI XI', 15, 'Core', 'PRESENCIAL'),
('PRIN220009', 'Projeto Interdisciplinar VI: PI XII', 15, 'Core', 'PRESENCIAL'),
('FCOM230001', 'Sistemas Digitais: Circuitos Digitais com a Lógica Combinacional', 30, 'Core', 'PRESENCIAL'),
('FCOM230002', 'Sistemas Digitais: Circuitos Digitais com a Lógica Sequencial', 30, 'Core', 'PRESENCIAL'),
('COAP230023', 'Computação Gráfica: Introdução a Computação Gráfica', 30, 'Core', 'PRESENCIAL'),
('COAP230024', 'Computação Gráfica: Aplicações em Computação Gráfica', 30, 'Core', 'PRESENCIAL'),
('MATE230002', 'Cálculo Diferencial e Integral: Pré-cálculo', 30, 'Core', 'PRESENCIAL'),
('MATE230024', 'Cálculo Diferencial e Integral: Derivada, Integral e Aplicações I', 30, 'Core', 'PRESENCIAL'),
('MATE230025', 'Cálculo Diferencial e Integral: Sequências e Séries', 15, 'Flex', 'EAD'),
('MATE230026', 'Cálculo Diferencial e Integral: Derivada, Integral e Aplicações II', 30, 'Flex', 'EAD'),
('BDAD230001', 'Introdução a Banco de Dados: Introdução a Banco de Dados', 15, 'Core', 'PRESENCIAL'),
('BDAD230002', 'Introdução a Banco de Dados: Modelagem de banco de dados', 15, 'Core', 'PRESENCIAL'),
('BDAD230003', 'Introdução a Banco de Dados: SQL Básico', 30, 'Core', 'PRESENCIAL'),
('BDAD230009', 'Introdução à Banco de Dados: NoSQL', 15, 'Flex', 'EAD'),
('ALLP230005', 'Paradigmas de Linguagens de Programação: Introdução a Paradigmas de Linguagem de Programação', 30, 'Core', 'PRESENCIAL'),
('ALLP230006', 'Paradigmas de Linguagens de Programação: Linguagens Funcionais', 30, 'Flex', 'EAD'),
('INRC230005', 'Sistemas Operacionais: Introdução à administração de sistemas Linux com RHEL I', 30, 'Flex', 'EAD'),
('INRC230006', 'Sistemas Operacionais: Introdução à administração de sistemas Linux com RHEL II', 30, 'Flex', 'EAD'),
('FCOM230009', 'Sistemas Operacionais: Princípios de sistemas operacionais', 15, 'Core', 'PRESENCIAL'),
('FCOM230010', 'Sistemas Operacionais: Programação multiprocessada e multithreaded', 30, 'Core', 'PRESENCIAL'),
('FCOM230011', 'Sistemas Operacionais: Sistemas operacionais e memória de computador', 15, 'Core', 'PRESENCIAL'),
('FCOM230012', 'Sistemas Operacionais: Sistemas operacionais e dispositivos', 15, 'Flex', 'EAD'),
('BDAD230004', 'Banco de Dados Avançado: Gerenciamento da Transação em Banco de Dados', 15, 'Core', 'PRESENCIAL'),
('BDAD230005', 'Banco de Dados Avançado: Otimização de Consultas e Segurança', 15, 'Core', 'PRESENCIAL'),
('BDAD230006', 'Banco de Dados Avançado: Programação em banco de dados - PL/SQL', 15, 'Flex', 'EAD'),
('BDAD230007', 'Banco de Dados Avançado: SQL avançado', 15, 'Core', 'PRESENCIAL'),
('BDAD230008', 'Banco de Dados Avançado: Banco de Dados em Cloud', 15, 'Flex', 'EAD'),
('UXUI230001', 'Interação Humano Computador: Princípios do design de sistemas interativos', 15, 'Core', 'PRESENCIAL'),
('UXUI230002', 'Interação Humano Computador: Análise contextual e design conceitual', 15, 'Flex', 'EAD'),
('UXUI230003', 'Interação Humano Computador: Design de sistemas interativos', 15, 'Flex', 'EAD'),
('EGSW230036', 'Interação Humano Computador: Desenvolvimento de Design de Interação', 15, 'Flex', 'EAD'),
('FUNH230001', 'Metodologia de Pesquisa: Estado da Arte e do Conhecimento', 15, 'Core', 'PRESENCIAL'),
('FUNH230004', 'Metodologia de Pesquisa: Projeto de Pesquisa', 15, 'Core', 'PRESENCIAL'),
('FUNH230043', 'Metodologia de Pesquisa: Desenvolvimento do Artigo Científico', 15, 'Core', 'PRESENCIAL'),
('FUNH230044', 'Metodologia de Pesquisa: Publicação do Artigo Científico', 15, 'Core', 'PRESENCIAL'),
('ALLP220009', 'Projeto e Desenvolvimento de Sistema I: Análise', 15, 'Core', 'PRESENCIAL'),
('ALLP220010', 'Projeto e Desenvolvimento de Sistema I: Projeto', 15, 'Core', 'PRESENCIAL'),
('EST230168', 'Estágio Supervisionado I: Análise', 30, 'Core', 'PRESENCIAL'),
('EST230169', 'Estágio Supervisionado I: Projeto', 30, 'Core', 'PRESENCIAL'),
('EXTE230011', 'Práticas de Extensão I: Fundamentação e Justificativa', 80, 'Core', 'PRESENCIAL'),
('EXTE230012', 'Práticas de Extensão I: Documentação', 80, 'Core', 'PRESENCIAL'),
('GEIE230001', 'Empreendedorismo: Gestão e Estratégia', 15, 'Flex', 'EAD'),
('GEIE230002', 'Empreendedorismo: Plano de Negócios', 15, 'Core', 'PRESENCIAL'),
('GEIE230003', 'Empreendedorismo: Startups e Plataformas Colaborativas (Crowdfunding)', 15, 'Flex', 'EAD'),
('GEIE230004', 'Empreendedorismo: Oportunidades empreendedoras e Inovação', 15, 'Flex', 'EAD'),
('ESDS230001', 'Estatística: Estatística descritiva', 15, 'Core', 'PRESENCIAL'),
('ESDS230002', 'Estatística: Estatística para ciência de dados', 15, 'Core', 'PRESENCIAL'),
('ESDS230003', 'Estatística: Probabilidades e Introdução a Inferência Estatística', 15, 'Core', 'PRESENCIAL'),
('ESDS230004', 'Estatística: Inferência Estatística', 15, 'Core', 'PRESENCIAL'),
('FUNH230046', 'Linguagens Formais e Autômatos: Introdução às Linguagens Regulares', 30, 'Core', 'PRESENCIAL'),
('FUNH230047', 'Linguagens Formais e Autômatos: Introdução às Linguagens Livres de Contexto', 30, 'Core', 'PRESENCIAL'),
('EGSW230024', 'Metodologias Ágeis: Introdução a Metodologias Ágeis', 15, 'Core', 'PRESENCIAL'),
('EGSW230025', 'Metodologias Ágeis: Práticas da Modelagem Ágil', 15, 'Core', 'PRESENCIAL'),
('EGSW230026', 'Metodologias Ágeis: Desenvolvimento Ágil', 15, 'Core', 'PRESENCIAL'),
('GNES230039', 'Metodologias Ágeis: DevOps - Gestão, Conceitos e Cultura', 15, 'Core', 'PRESENCIAL'),
('ALLP220011', 'Projeto e Desenvolvimento de Sistema II: Desenvolvimento', 15, 'Core', 'PRESENCIAL'),
('EST230170', 'Estágio Supervisionado II: Implementação I', 30, 'Core', 'PRESENCIAL'),
('EST230171', 'Estágio Supervisionado II: Implementação II', 30, 'Core', 'PRESENCIAL'),
('EXTE230013', 'Práticas de Extensão II: Desenvolvimento', 80, 'Core', 'PRESENCIAL'),
('EXTE230014', 'Práticas de Extensão II: Publicação e Defesa', 80, 'Core', 'PRESENCIAL'),
('INRC230001', 'Redes de Computadores: Introdução à Redes', 15, 'Core', 'PRESENCIAL'),
('INRC230002', 'Redes de Computadores: Acesso à Rede', 15, 'Core', 'PRESENCIAL'),
('INRC230003', 'Redes de Computadores: Endereçamento IP', 15, 'Core', 'PRESENCIAL'),
('INRC230004', 'Redes de Computadores: Camada de Transporte', 15, 'Core', 'PRESENCIAL'),
('ESDS230005', 'Ciência de Dados e Aprendizagem de Máquina: Introdução Data Science', 15, 'Core', 'PRESENCIAL'),
('MATE230023', 'Ciência de Dados e Aprendizagem de Máquina: Introdução a aplicação de ML em Data Science', 15, 'Flex', 'EAD'),
('EGSW230012', 'Gerência de Configuração e Controle de Versão: Gerência de Configuração', 15, 'Flex', 'EAD'),
('EGSW230013', 'Gerência de Configuração e Controle de Versão: Controle de Versão', 15, 'Flex', 'EAD'),
('EGSW230030', 'Gerência de Configuração e Controle de Versão: Introdução ao Controle de Versão', 15, 'Flex', 'EAD'),
('INAR230005', 'Desenvolvimento com DevOps: Controle de Versão e Integração Contínua', 15, 'Core', 'PRESENCIAL'),
('INRC230011', 'Desenvolvimento com DevOps: Gerenciamento de containers', 15, 'Core', 'PRESENCIAL'),
('INAR230001', 'Inteligência Artificial: Agentes inteligentes', 15, 'Core', 'PRESENCIAL'),
('INAR230006', 'Inteligência Artificial: Busca em espaço de estados', 15, 'Core', 'PRESENCIAL'),
('INAR230007', 'Inteligência Artificial: Aprendizado de Máquinas', 30, 'Core', 'PRESENCIAL'),
('INAR230008', 'Inteligência Artificial: Aplicações de Aprendizado de Máquinas', 30, 'Core', 'PRESENCIAL'),
('INAR230002', 'Inteligência Artificial: Algoritmos evolutivos', 30, 'Core', 'PRESENCIAL'),
('FUNH230009', 'Noções de Direito e Ética: LGPD - Lei Geral de Proteção de Dados', 30, 'Core', 'PRESENCIAL'),
('FUNH230010', 'Noções de Direito e Ética: Elaborando Contratos de Software', 15, 'Core', 'PRESENCIAL'),
('FUNH230011', 'Noções de Direito e Ética: Crimes Cibernéticos', 15, 'Core', 'PRESENCIAL'),
('COAP230006', 'Sistemas Cyber-Físicos e Internet das coisas: Fundamentos tecnológicos para IoT', 15, 'Flex', 'EAD'),
('COAP230007', 'Sistemas Cyber-Físicos e Internet das coisas: Arquiteturas de Sistemas Embarcados', 15, 'Flex', 'EAD'),
('EGSW230007', 'Tópicos Especiais em Engenharia de Software: UML Avançada', 30, 'Flex', 'EAD'),
('GNES230004', 'Administração de Sistemas Empresariais: Principios de negócio para Sistemas da Informação', 15, 'Flex', 'EAD'),
('GNES230005', 'Administração de Sistemas Empresariais: Disponibilização de Sistemas da Informação para corporações', 15, 'Flex', 'EAD'),
('GNES230006', 'Administração de Sistemas Empresariais: Sistemas da Informação com Business Intelligence', 15, 'Flex', 'EAD'),
('GNES230007', 'Administração de Sistemas Empresariais: Sistemas da Informação para organizações', 15, 'Flex', 'EAD'),
('FCOM230003', 'Compiladores: Estrutura de um Compilador', 15, 'Core', 'PRESENCIAL'),
('FCOM230004', 'Compiladores: Análise Sintática', 15, 'Core', 'PRESENCIAL'),
('FCOM230005', 'Compiladores: Análise Semântica e Tradução dirigida por sintaxe', 15, 'Core', 'PRESENCIAL'),
('FCOM230006', 'Compiladores: Código Intermediário', 15, 'Core', 'PRESENCIAL'),
('INRC230007', 'Computação em Nuvem: Introdução a Computação em Nuvem', 15, 'Core', 'PRESENCIAL'),
('INRC230008', 'Computação em Nuvem: Modelos de Implantação de Nuvem', 15, 'Flex', 'EAD'),
('INRC230009', 'Computação em Nuvem: Prática na Nuvem', 30, 'Flex', 'EAD'),
('EGSW230035', 'Metricas de Software: Pontos por casos de uso e Pontos por função', 30, 'Flex', 'EAD'),
('COAP230018', 'Programação de Jogos: Fundamentos de Game Engines', 30, 'Flex', 'EAD'),
('COAP230019', 'Programação de Jogos: Renderização para Jogos', 30, 'Flex', 'EAD'),
('COAP230020', 'Programação de Jogos: Inteligência Artificial para Jogos', 30, 'Flex', 'EAD'),
('COAP230021', 'Programação de Jogos: Jogos digitais com IA competitiva', 15, 'Flex', 'EAD'),
('FUNH230005', 'Sociologia: Introdução ao Conhecimento Sociológico', 15, 'Core', 'PRESENCIAL'),
('FUNH230006', 'Sociologia: Sociologia contemporânea', 15, 'Flex', 'EAD'),
('FUNH230045', 'Sociologia: Sociedade, trabalho e produção', 15, 'Flex', 'EAD'),
('GNES221003', 'Gestão de Pessoas: Gestão de Pessoas e Principais Práticas', 15, 'Flex', 'EAD'),
('GNES221004', 'Gestão de Pessoas: Cultura Organizacional e Intraempreendedorismo', 15, 'Flex', 'EAD'),
('TCC230005', 'TCC I: Projeto de Pesquisa', 15, 'Core', 'PRESENCIAL'),
('TCC230006', 'TCC I: Escrita', 15, 'Core', 'PRESENCIAL'),
('TCC230007', 'TCC II: Desenvolvimento da Pesquisa', 15, 'Core', 'PRESENCIAL'),
('TCC230008', 'TCC II: Entrega e Defesa', 15, 'Core', 'PRESENCIAL'),
('COAP230001', 'Tópicos Avançados em Computação: Infraestrutura com Docker', 15, 'Flex', 'EAD'),
('COAP230002', 'Tópicos Avançados em Computação: Introdução à Internet das Coisas 2.0', 15, 'Flex', 'EAD'),
('COAP230003', 'Tópicos Avançados em Computação: Princípios e arquitetura de sistemas distribuídos', 30, 'Core', 'PRESENCIAL'),
('COAP230004', 'Tópicos Avançados em Computação: Componentes de sistemas distribuídos', 30, 'Core', 'PRESENCIAL'),
('COAP230005', 'Tópicos Avançados em Computação: Manutenção e desempenho de sistemas distribuídos', 30, 'Flex', 'EAD'),
('EGSW230032', 'Processo e Desenvolvimento de Software: Introdução ao Processo de Desenvolvimento de Software', 15, 'Core', 'PRESENCIAL'),
('EGSW230014', 'Teste de Software: Introdução a Teste de Software', 15, 'Flex', 'EAD'),
('EGSW230029', 'Teste de Software: Tipos e Fundamentos de Teste de Software', 30, 'Flex', 'EAD'),
('EGSW230017', 'Teste de Software: Ferramentas de Teste de Software', 15, 'Flex', 'EAD'),
('EGSW230018', 'Qualidade de Software: Introdução a Qualidade de Software', 15, 'Flex', 'EAD'),
('EGSW230020', 'Qualidade de Software: Principais abordagens de Qualidade de Software', 15, 'Flex', 'EAD'),
('EGSW230021', 'Qualidade de Software: Modelos de Melhoria do Processo de Software', 30, 'Flex', 'EAD');

-- #GRADE ADS 5000

INSERT INTO disciplinas (codigo, titulo, carga_horaria, modalidade) VALUES
('ADS@5018', 'Desenvolvimento de Aplicativos Móveis', 100,'EAD'),
('ADS@5006', 'Gerência de Requisitos', 100,'EAD'),
('ADS@5007', 'Lógica de Programação e Algoritmos', 100,'EAD'),
('ADS@5012', 'Algoritmos e Estrutura de Dados', 100,'EAD'),
('ADS@5004', 'Arquitetura e Organização de Computadores', 100,'EAD'),
('ADS@5009', 'Linguagem de Programação Orientada a Objetos', 100,'EAD'),
('ADS@5015', 'Análise e Projeto de Algoritmos', 100,'EAD'),
('ADS@5010', 'Análise e Projeto Orientados a Objetos', 100,'EAD'),
('ADS@5008', 'Introdução a Banco de Dados', 100,'EAD'),
('ADS@5019', 'Sistemas Operacionais', 100,'EAD'),
('ADS@5013', 'Banco de Dados Avançado', 100,'EAD'),
('ADS@5016', 'Desenvolvimento Web', 100,'EAD'),
('ADS@5005', 'Interação Humano Computador', 100,'EAD'),
('ADS@5001', 'Empreendedorismo', 100,'EAD'),
('ADS@5021', 'Redes de Computadores', 100,'EAD');


insert into disciplina_grades (disciplina_id, grade_id) values

-- # GRADE 2017

(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),

-- # GRADE 2019

(45, 2),
(46, 2),
(47, 2),
(48, 2),
(49, 2),
(50, 2),
(51, 2),
(52, 2),
(53, 2),
(54, 2),
(55, 2),
(56, 2),
(57, 2),
(58, 2),
(59, 2),
(60, 2),
(61, 2),
(62, 2),
(63, 2),
(64, 2),
(65, 2),
(66, 2),
(67, 2),
(68, 2),
(69, 2),
(70, 2),
(71, 2),
(72, 2),
(73, 2),
(74, 2),
(75, 2),
(76, 2),
(77, 2),
(78, 2),
(79, 2),
(80, 2),
(81, 2),
(82, 2),
(83, 2),
(84, 2),
(85, 2),
(86, 2),
(87, 2),
(88, 2),
(89, 2),
(90, 2),
(91, 2),
(92, 2),
(93, 2),
(94, 2),
(95, 2),
(96, 2),
(97, 2),
(98, 2),
(99, 2),
(100, 2),
(101, 2),
(102, 2),

-- # grade cubo cc

(103, 3),
(104, 3),
(105, 3),
(106, 3),
(107, 3),
(108, 3),
(109, 3),
(110, 3),
(111, 3),
(112, 3),
(113, 3),
(114, 3),
(115, 3),
(116, 3),
(117, 3),
(118, 3),
(119, 3),
(120, 3),
(121, 3),
(122, 3),
(123, 3),
(124, 3),
(125, 3),
(126, 3),
(127, 3),
(128, 3),
(129, 3),
(130, 3),
(131, 3),
(132, 3),
(133, 3),
(134, 3),
(135, 3),
(136, 3),
(137, 3),
(138, 3),
(139, 3),
(140, 3),
(141, 3),
(142, 3),
(143, 3),
(144, 3),
(145, 3),
(146, 3),
(147, 3),
(148, 3),
(149, 3),
(150, 3),
(151, 3),
(152, 3),
(153, 3),
(154, 3),
(155, 3),
(156, 3),
(157, 3),
(158, 3),
(159, 3),
(160, 3),
(161, 3),
(162, 3),
(163, 3),
(164, 3),
(165, 3),
(166, 3),
(167, 3),
(168, 3),
(169, 3),
(170, 3),
(171, 3),
(172, 3),
(173, 3),
(174, 3),
(175, 3),
(176, 3),
(177, 3),
(178, 3),
(179, 3),
(180, 3),
(181, 3),
(182, 3),
(183, 3),
(184, 3),
(185, 3),
(186, 3),
(187, 3),
(188, 3),
(189, 3),
(190, 3),
(191, 3),
(192, 3),
(193, 3),
(194, 3),
(195, 3),
(196, 3),
(197, 3),
(198, 3),
(199, 3),
(200, 3),
(201, 3),
(202, 3),
(203, 3),
(204, 3),
(205, 3),
(206, 3),
(207, 3),
(208, 3),
(209, 3),
(210, 3),
(211, 3),
(212, 3),
(213, 3),
(214, 3),
(215, 3),
(216, 3),
(217, 3),
(218, 3),
(219, 3),
(220, 3),
(221, 3),
(222, 3),
(223, 3),
(224, 3),
(225, 3),
(226, 3),
(227, 3),
(228, 3),
(229, 3),
(230, 3),
(231, 3),
(232, 3),
(233, 3),
(234, 3),
(235, 3),
(236, 3),
(237, 3),
(238, 3),
(239, 3),
(240, 3),
(241, 3),
(242, 3),
(243, 3),
(244, 3),
(245, 3),
(246, 3),
(247, 3),
(248, 3),
(249, 3),
(250, 3),
(251, 3),
(252, 3),
(253, 3),
(254, 3),
(255, 3),
(256, 3),
(257, 3),
(258, 3),
(259, 3),
(260, 3),
(261, 3),
(262, 3),
(263, 3),
(264, 3),
(265, 3),
(266, 3),
(267, 3),
(268, 3),
(269, 3),
(270, 3),
(271, 3),
(272, 3),
(273, 3),
(274, 3),
(275, 3),
(276, 3),
(277, 3),
(278, 3),
(279, 3),

-- # grade ads 5000

(280,4),
(281,4),
(282,4),
(283,4),
(284,4),
(285,4),
(286,4),
(287,4),
(288,4),
(289,4),
(290,4),
(291,4),
(292,4),
(293,4),
(294,4),
(295,4);


INSERT INTO equivalencias (titulo) VALUES ("equivalencia 1"),
("equivalencia 2"),
("equivalencia 3"),
("equivalencia 4"),
("equivalencia 5"),
("equivalencia 6"),
("equivalencia 7"),
("equivalencia 8"),
("equivalencia 9"),
("equivalencia 10"),
("equivalencia 11"),
("equivalencia 12"),
("equivalencia 13"),
("equivalencia 14"),
("equivalencia 15"),
("equivalencia 16"),
("equivalencia 17"),
("equivalencia 18"),
("equivalencia 19"),
("equivalencia 20"),
("equivalencia 21"),
("equivalencia 22"),
("equivalencia 23"),
("equivalencia 24"),
("equivalencia 25"),
("equivalencia 26"),
("equivalencia 27"),
("equivalencia 28"),
("equivalencia 29"),
("equivalencia 30"),
("equivalencia 31"),
("equivalencia 32"),
("equivalencia 33"),
("equivalencia 34"),
("equivalencia 35"),
("equivalencia 36"),
("equivalencia 37"),
("equivalencia 38"),
("equivalencia 39"),
("equivalencia 40"),
("equivalencia 41"),
("equivalencia 42"),
("equivalencia 43"),
("equivalencia 44"),
("equivalencia 45"),
("equivalencia 46"),
("equivalencia 47"),
("equivalencia 48"),
("equivalencia 49"),
("equivalencia 50"),
("equivalencia 51"),
("equivalencia 52"),
("equivalencia 53"),
("equivalencia 54"),
("equivalencia 55"),
("equivalencia 56"),
("equivalencia 57"),
("equivalencia 58"),
("equivalencia 59");

  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('45', '1');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('103', '1');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('104', '1');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('105', '1');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('106', '1');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('107', '1');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('108', '1');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('109', '1');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('110', '1');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('111', '1');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('112', '1');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('113', '1');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('114', '1');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('280', '1');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('1', '2');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('46', '2');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('115', '2');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('116', '2');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('117', '2');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('118', '2');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('119', '2');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('103', '2');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('281', '2');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('2', '3');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('47', '3');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('120', '3');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('121', '3');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('282', '3');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('3', '4');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('48', '4');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('122', '4');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('123', '4');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('124', '4');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('125', '4');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('282', '4');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('4', '5');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('49', '5');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('126', '5');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('127', '5');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('282', '5');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('5', '6');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('50', '6');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('128', '6');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('129', '6');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('51', '7');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('130', '7');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('131', '7');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('6', '8');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('52', '8');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('132', '8');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('133', '8');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('283', '8');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('7', '9');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('53', '9');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('134', '9');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('135', '9');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('284', '9');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('8', '10');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('54', '10');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('136', '10');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('137', '10');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('285', '10');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('9', '11');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('55', '11');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('138', '11');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('139', '11');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('140', '11');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('10', '12');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('56', '12');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('141', '12');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('142', '12');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('57', '13');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('143', '13');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('144', '13');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('12', '14');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('11', '14');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('57', '14');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('145', '14');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('146', '14');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('147', '14');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('148', '14');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('286', '14');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('13', '15');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('59', '15');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('149', '15');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('150', '15');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('151', '15');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('136', '15');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('137', '15');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('287', '15');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('14', '16');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('60', '16');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('152', '16');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('153', '16');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('154', '16');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('155', '16');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('15', '17');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('61', '17');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('156', '17');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('157', '17');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('158', '17');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('16', '18');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('62', '18');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('159', '18');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('160', '18');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('63', '19');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('161', '19');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('162', '19');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('17', '20');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('64', '20');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('163', '20');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('164', '20');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('18', '21');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('65', '21');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('165', '21');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('166', '21');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('19', '22');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('66', '22');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('167', '22');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('168', '22');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('169', '22');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('170', '22');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('20', '23');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('67', '23');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('171', '23');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('172', '23');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('173', '23');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('174', '23');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('288', '23');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('21', '24');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('68', '24');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('175', '24');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('176', '24');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('22', '25');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('62', '25');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('63', '25');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('23', '26');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('71', '26');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('177', '26');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('178', '26');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('179', '26');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('180', '26');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('181', '26');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('182', '26');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('289', '26');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('24', '27');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('72', '27');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('183', '27');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('184', '27');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('185', '27');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('186', '27');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('187', '27');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('112', '27');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('290', '27');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('25', '28');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('73', '28');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('26', '29');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('74', '29');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('108', '29');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('109', '29');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('110', '29');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('111', '29');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('112', '29');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('113', '29');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('114', '29');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('291', '29');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('27', '30');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('75', '30');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('188', '30');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('189', '30');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('190', '30');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('191', '30');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('111', '30');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('103', '30');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('114', '30');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('292', '30');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('28', '31');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('76', '31');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('192', '31');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('193', '31');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('194', '31');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('195', '31');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('77', '32');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('196', '32');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('197', '32');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('78', '33');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('198', '33');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('199', '33');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('79', '34');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('200', '34');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('201', '34');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('30', '35');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('80', '35');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('202', '35');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('203', '35');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('204', '35');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('205', '35');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('128', '35');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('129', '35');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('130', '35');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('293', '35');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('31', '36');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('81', '36');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('206', '36');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('207', '36');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('208', '36');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('209', '36');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('32', '37');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('82', '37');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('210', '37');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('211', '37');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('33', '38');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('83', '38');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('212', '38');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('213', '38');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('214', '38');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('215', '38');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('84', '39');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('216', '39');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('196', '39');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('34', '40');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('85', '40');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('217', '40');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('218', '40');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('86', '41');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('219', '41');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('220', '41');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('35', '42');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('87', '42');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('221', '42');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('222', '42');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('223', '42');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('224', '42');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('294', '42');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('88', '43');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('225', '43');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('226', '43');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('206', '43');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('207', '43');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('208', '43');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('209', '43');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('89', '44');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('227', '44');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('228', '44');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('229', '44');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('230', '44');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('231', '44');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('90', '45');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('232', '45');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('233', '45');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('234', '45');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('235', '45');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('236', '45');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('91', '46');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('237', '46');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('238', '46');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('239', '46');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('92', '47');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('240', '47');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('241', '47');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('126', '47');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('127', '47');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('38', '48');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('93', '48');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('242', '48');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('39', '49');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('94', '49');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('243', '49');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('244', '49');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('245', '49');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('246', '49');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('40', '50');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('95', '50');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('247', '50');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('248', '50');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('249', '50');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('250', '50');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('96', '51');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('251', '51');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('252', '51');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('253', '51');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('215', '51');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('230', '51');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('231', '51');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('96', '52');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('251', '52');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('252', '52');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('253', '52');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('97', '53');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('254', '53');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('98', '54');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('255', '54');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('256', '54');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('257', '54');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('258', '54');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('41', '55');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('99', '55');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('259', '55');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('260', '55');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('261', '55');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('262', '55');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('263', '55');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('42', '56');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('100', '56');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('264', '56');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('265', '56');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('43', '57');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('101', '57');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('266', '57');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('267', '57');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('44', '58');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('102', '58');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('268', '58');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('269', '58');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('270', '58');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('271', '58');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('272', '58');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('163', '59');
  INSERT INTO disciplinas_equivalencias (disciplina_id, equivalencia_id) VALUES ('164', '59');
