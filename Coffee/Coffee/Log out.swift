//
//  File.swift
//  Coffee
//
//  Created by HIND12 on 14/05/1443 AH.
//

import Foundation
required _once('session.php');
if ($ _SESSION['user_info']!=false)
    $_SESSION['user_info'] = false;

header('Location: showForums.php');
