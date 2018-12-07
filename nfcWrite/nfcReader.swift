//
//  nfcReader.swift
//  nfcWrite
//
//  Created by Dion Boles on 12/7/18.
//  Copyright © 2018 Dion Boles. All rights reserved.
//

import CoreNFC
class NFCReader: NSObject, NFCNDEFReaderSessionDelegate {
    private var session: NFCNDEFReaderSession?
    func beginSession() {
        self.session =  NFCNDEFReaderSession.init(delegate: self, queue: nil, invalidateAfterFirstRead: false)
        self.session?.begin()
    }
    func readerSession(_ session: NFCNDEFReaderSession, didDetectNDEFs messages: [NFCNDEFMessage]) {
        for message in messages {
            for record in message.records {
                print("New Record Found:")
                print(record.identifier)
                print(record.payload)
                print(record.type)
                print(record.typeNameFormat)
            }
        }
    }
    func readerSession(_ session: NFCNDEFReaderSession, didInvalidateWithError error: Error) {
        print("NFC NDEF Invalidated")
        print("\(error)")
    }
    
}
