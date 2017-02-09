//
//  Pacco.m
//  Stoccaggio
//
//  Created by Luca Campara on 08/02/17.
//  Copyright © 2017 Luca Campara. All rights reserved.
//

#import "Pacco.h"

#import "Utils.h"

@implementation Pacco

-(id)initWithCodice:(NSString *)codice mittente:(NSString *)mittente destinatario:(NSString *)destinatario lunghezza:(NSInteger)lunghezza altezza:(NSInteger)altezza profondita:(NSInteger)profondita andMateriale:(Materiale)materiale {
    
    // chiamo il costruttore del mio oggetto da cui eredito (in questo caso NSObject)
    self = [super init];
    
    // controllo se il costruttore padre ha allocato l'oggetto
    if (self) {
        // non posso settare le variabili con setVariabile perchè è readonly
        // le variabili con _nome sono "private" e possono essere usate solo all'interno della classe
        _codice = codice;
        _mittente = mittente;
        _destinatario = destinatario;
        _lunghezza = lunghezza;
        _altezza = altezza;
        _profondita = profondita;
        _materiale = materiale;
        
    }
    
    return self;
}

#pragma mark - Getters

-(NSInteger)volume {
    return _lunghezza * _altezza * _profondita;
}

-(NSInteger)peso {
    NSInteger pesoSpecifico = 0;
    
    switch (_materiale) {
        case MaterialeCarta:
            pesoSpecifico = kPesoSpecificoCarta;
            break;
        case MaterialeFerro:
            pesoSpecifico = kPesoSpecificoFerro;
            break;
        case MaterialePlastica:
            pesoSpecifico = kPesoSpecificoPlastica;
            break;
    }
    
    return self.volume * pesoSpecifico;
}

#pragma mark - Overrides

-(NSString *)description {
    NSString *newDescription = [NSString stringWithFormat:@"%@\nCodice: %@\nMittente: %@\nDestinatario: %@\nLunghezza: %li\nAltezza: %li\nProfondità: %li\nMateriale: %li\nVolume: %licm3\nPeso: %likg", [super description], self.codice, self.mittente, self.destinatario, self.lunghezza, self.altezza, self.profondita, self.materiale, self.volume, self.peso/1000];
    
    return newDescription;
}

@end
