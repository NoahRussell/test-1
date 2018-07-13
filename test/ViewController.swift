//
//  ViewController.swift
//  test
//
//  Created by Noah Russell on 09/07/2018.
//  Copyright © 2018 Noah Russell. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    //MARK: Properties
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var filmNameLabel: UILabel!
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var FilmRating: UILabel!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //adding toolbar
        let toolbar:UIToolbar = UIToolbar(frame: CGRect(x:0,y:0,width:self.view.frame.size.width, height:30))
        let flexSpace = UIBarButtonItem(barButtonSystemItem:.flexibleSpace, target: nil, action: nil)
        let doneBtn: UIBarButtonItem = UIBarButtonItem(title: "Done", style: .done, target: self, action: Selector(("doneButtonAction")))
        toolbar.setItems([flexSpace, doneBtn], animated: false)
        toolbar.sizeToFit()
        //setting toolbar up
        self.nameTextField.inputAccessoryView = toolbar
        // Do any additional setup after loading the view, typically from a nib.
        // Handle the text field’s user input through delegate callbacks.
        nameTextField.delegate = self
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: UITextFieldDelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //Hides the keyboard
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        filmNameLabel.text = textField.text
    }
    
    //MARK: UIImagePickerControlDelegate
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
        //the info dictionary may contain multiple representations of the image. Use original

    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        guard let selectedImage = info[UIImagePickerControllerOriginalImage] as? UIImage else {
            fatalError("Expected a dictionary containing an image, but was provided the following: \(info)")
        }
            //set photoImageView to display the selected image.
            photoImageView.image = selectedImage
            //dismiss the picker
            dismiss(animated: true, completion: nil)
        }
    
    //MARK: Actions
    @IBAction func selectImageFromPhotoLibrary(_ sender: UITapGestureRecognizer) {
        //Hides keyboard
        nameTextField.resignFirstResponder()
        // UIImagePickerController is a view controller that lets a user pick media from their photo library.
        let imagePickerController = UIImagePickerController()
        // Only allow photos to be picked, not taken.
        imagePickerController.sourceType = .photoLibrary
        // Make sure ViewController is notified when the user picks an image.
        imagePickerController.delegate = self
        present(imagePickerController, animated: true, completion: nil)
    }
    
    @IBOutlet weak var dynamicRating: ViewController!
    @IBAction func setDefaultLabelText(_ sender: UIButton) {
        filmNameLabel.text = "Default Text"
    }
    @IBAction func doneButtonAction() {
        self.view.endEditing(true)
    }

    var dynamicRatingInt: Int = 0
    var dynamicRatingString: String = ""

        @IBAction func minusStarRating(_ sender: UIButton) {

            
            if dynamicRatingInt >= 1 {
            dynamicRatingInt = dynamicRatingInt - 1
                FilmRating.text = ""
                for n in 0...dynamicRatingInt{
                    FilmRating.text = FilmRating.text! + "*"
                }
            }else{
                FilmRating.text = "*"
            }
        }
        @IBAction func addStarRating(_ sender: UIButton) {
            if dynamicRatingInt < 4{
                dynamicRatingInt = dynamicRatingInt + 1
                    FilmRating.text = FilmRating.text! + "*"

            }else{
                FilmRating.text = "*****"
            }
        }
        
        
        
    }

