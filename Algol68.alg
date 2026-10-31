BEGIN
    INT quantidadeacademicos;
    REAL nota1;
    REAL nota2;
    REAL nota3;
    REAL media;
    STRING texto;
    

    PROC calculomedianotas = (REAL n1, REAL n2, REAL n3) REAL: (n1 + n2 + n3) / 3;

    PROC mensagemaprovacao = (REAL media) STRING:
        IF media >= 6 THEN
            "Aprovado"
        ELSE 
            "Reprovado"
        FI;
    
    
        print(("Digite a quantidade de academicos: "));
        read((quantidadeacademicos));
    
    DO
        print((newline));
        print(("Academicos restantes:", quantidadeacademicos, newline));
    
        print(("Digite a sua primeira nota: "));
        read((nota1, newline));
        
        print(("Digite a segunda nota: "));
        read((nota2, newline));
        
        print(("Digite a terceira nota: "));
        read((nota3, newline));
        
        media := calculomedianotas (nota1, nota2, nota3);
        print(("media: "));
        print((fixed(media, 0, 2), newline));
        texto := mensagemaprovacao(media);
        print(("texto: ", texto, newline));
        
        quantidadeacademicos := quantidadeacademicos - 1;
    
    UNTIL quantidadeacademicos = 0;
    OD;
  
END