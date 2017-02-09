//
//  Pacco.h
//  Stoccaggio
//
//  Created by Luca Campara on 08/02/17.
//  Copyright © 2017 Luca Campara. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, Materiale) {
    MaterialeFerro = 0,
    MaterialePlastica = 1,
    MaterialeCarta = 2
};

@interface Pacco : NSObject

// costruttore
-(id)initWithCodice:(NSString *)codice mittente:(NSString *)mittente destinatario:(NSString *)destinatario lunghezza:(NSInteger)lunghezza altezza:(NSInteger)altezza profondita:(NSInteger)profondita andMateriale:(Materiale)materiale;

@property (nonatomic, strong, readonly) NSString *codice;

@property (nonatomic, strong, readonly) NSString *mittente;

@property (nonatomic, strong) NSString *destinatario;

// se non è un puntatore, non serve "strong" perchè non è una referenza
@property (nonatomic, readonly) NSInteger lunghezza;

@property (nonatomic, readonly) NSInteger altezza;

@property (nonatomic, readonly) NSInteger profondita;

@property (nonatomic, readonly) NSInteger volume;

@property (nonatomic, readonly) NSInteger peso;

@property (nonatomic, readonly) Materiale materiale;

@end
