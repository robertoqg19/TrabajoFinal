//
//  Album.swift
//  MusicDay
//
//  Created by Alumno on 26/08/19.
//  Copyright © 2019 Area51 Training Center S.A.C. All rights reserved.
//

import Foundation
import Firebase

struct Restaurante {
    var id: String?
    var titulo: String?
    var plato: String?
    var images: String?
    var precio: String?
    var oferta: String?
    var anio: String?

    init(snapshot: DataSnapshot) {
        let snapshotValue = snapshot.value as! [String: AnyObject]
        id = snapshot.key
        titulo = snapshotValue["titulo"] as? String ?? ""
        plato = snapshotValue["plato"] as? String ?? ""
        images = snapshotValue["images"] as? String ?? ""
        precio = snapshotValue["precio"] as? String ?? ""
        oferta = snapshotValue["oferta"] as? String ?? ""
        anio = snapshotValue["anio"] as? String ?? ""
    }
    
    init(id: String, titulo: String, plato: String, images: String, precio: String, oferta: String, anio: String) {
        self.id = id
        self.titulo = titulo
        self.plato = plato
        self.images = images
        self.precio = precio
        self.oferta = oferta
        self.anio = anio
    }
    
    func toAny() -> Any {
        return [
            "titulo" : titulo,
            "plato" : plato,
            "images" : images,
            "precio" : precio,
            "oferta" : oferta,
            "anio" : anio
        ]
    }
}
