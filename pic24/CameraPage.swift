//
//  CameraPage.swift
//  pic24
//
//  Created by Mohammad Al-Ahdal on 2017-10-06.
//  Copyright © 2017 Mohammad Al-Ahdal. All rights reserved.
//
//
//  Camera Manager
//
//  Copyright (c) 2014 ImaginaryCloud, imaginarycloud.com.
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy of this software and
//  associated documentation files (the "Software"), to deal in the Software without restriction,
//  including without limitation the rights to use, copy, modify, merge, publish, distribute,
//  sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all copies
//  or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED,
//  INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR
//  PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE
//  FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
//  ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

import UIKit
import AVFoundation
import CameraManager

let cameraManager = CameraManager.init()

class CameraPage: UIViewController {
    
    @IBOutlet weak var camView: UIView!
    
    
    override func viewDidLoad() {
        _ = cameraManager.addPreviewLayerToView(self.camView)
        cameraManager.shouldEnableTapToFocus = true
        cameraManager.shouldEnablePinchToZoom = true
        cameraManager.cameraOutputQuality = .high
        cameraManager.shouldRespondToOrientationChanges = false
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        self.view.backgroundColor = UIColor(hex: 0xFFFFFF)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
