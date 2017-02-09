//
//  ViewController.m
//  Stoccaggio
//
//  Created by Luca Campara on 08/02/17.
//  Copyright © 2017 Luca Campara. All rights reserved.
//

#import "ViewController.h"


#import "Pacco.h"
#import "Corriere.h"

NSMutableArray *arrayPacchi;
Corriere *corriere;
int volumePacchi;

@interface ViewController ()
    

@end



@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    corriere = [[Corriere alloc] initWithVolume:[self getRandomNumberBetween:1000 to:50000] andTara:5000];
    
    NSLog(@"CORRIERE VOLUME TOTALE: %licm3", corriere.volume);
    
    arrayPacchi = [[NSMutableArray alloc]init];
    for (int i = 0; i < 100; i++) {
        NSString *codice = [NSString stringWithFormat:@"%i", i];
        NSString *mittente = [NSString stringWithFormat:@"Gino%i", i];
        NSString *destinatario = [NSString stringWithFormat:@"Daniele%i", i];
        Pacco *pacco = [[Pacco alloc] initWithCodice:codice mittente:mittente destinatario:destinatario lunghezza:[self getRandomNumberBetween:1 to:10] altezza:[self getRandomNumberBetween:1 to:10] profondita:[self getRandomNumberBetween:1 to:10] andMateriale:MaterialePlastica];
        [arrayPacchi addObject: pacco];
    }
    volumePacchi = [self calcolaVolumePacchi];
    
    NSLog(@"VOLUME TOTALE DEI 100 PACCHI: %icm3", volumePacchi);
    
        // 1 100 pacchi random
        // 2 classe corriere costruttore con settaggio volume
        // 3 verifica se i 100 pacchi entrano nel corriere creato (volume)
        // 4 quanti corrieri servono
        // 5 corriere con proprietà peso
    
    if ([self checkCorriereContainsAllPacchi] == YES) {
        NSLog(@"IL CORRIERE RIESCE A CONTENTERE TUTTI I PACCHI");
    } else {
        NSLog(@"IL CORRIERE NON RIESCE A CONTENTERE TUTTI I PACCHI");
    }
    
    NSLog(@"NUMERO DI CORRIERI NECESSARI: %i", [self numeroCorrieriNecessari]);
}

-(int)getRandomNumberBetween:(int)from to:(int)to {
    
    return (int)from + arc4random() % (to-from+1);
}


-(int)calcolaVolumePacchi {
    int volumeTotale;
    for (Pacco *p in arrayPacchi) {
        volumeTotale += p.volume;
    }
    return volumeTotale;
}

-(BOOL)checkCorriereContainsAllPacchi {
    return corriere.volume >= volumePacchi;
}

-(int)numeroCorrieriNecessari {
    if (corriere.volume >= volumePacchi) {
        return 1;
    } else {
        if (volumePacchi % corriere.volume == 0) {
            return volumePacchi / corriere.volume;
        } else{
            return volumePacchi / corriere.volume + 1;
        }
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
