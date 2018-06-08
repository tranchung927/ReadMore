//
//  ViewController.swift
//  ReadMore
//
//  Created by Chung on 6/8/18.
//  Copyright © 2018 Chung. All rights reserved.
//

import UIKit

struct Comment {
    var name: String
    var comment: String
}

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    let data: [Comment] = [Comment(name: "Chung", comment: "Now, you may wonder why you’re not making Cookie a subclass of SKSpriteNode. After all, the cookie is something you want to display on the screen. If you’re familiar with the MVC pattern, think of Cookie as a model object that simply describes the data for the cookie. The view is a separate object, stored in the sprite property."), Comment(name: "Chung", comment: "Now, you may wonder why you’re not making Cookie a subclass of SKSpriteNode. After all, the cookie is something you want to display on the screen. If you’re familiar with the MVC pattern, think of Cookie as a model object that simply describes the data for the cookie. The view is a separate object, stored in the sprite property."), Comment(name: "Chung", comment: "Now, you may wonder why you’re not making Cookie a subclass of SKSpriteNode. After all, the cookie is something you want to display on the screen. If you’re familiar with the MVC pattern, think of Cookie as a model object that simply describes the data for the cookie. The view is a separate object, stored in the sprite property."), Comment(name: "Chung", comment: "Now, you may wonder why you’re not making Cookie a subclass of SKSpriteNode. After all, the cookie is something you want to display on the screen. If you’re familiar with the MVC pattern, think of Cookie as a model object that simply describes the data for the cookie. The view is a separate object, stored in the sprite property."), Comment(name: "Chung", comment: "Now, you may wonder why you’re not making Cookie a subclass of SKSpriteNode. After all, the cookie is something you want to display on the screen. If you’re familiar with the MVC pattern, think of Cookie as a model object that simply describes the data for the cookie. The view is a separate object, stored in the sprite property."),Comment(name: "Chung", comment: "Now, you may wonder why you’re not making Cookie a subclass of SKSpriteNode. After all, the cookie is something you want to display on the screen. If you’re familiar with the MVC pattern, think of Cookie as a model object that simply describes the data for the cookie. The view is a separate object, stored in the sprite property."), Comment(name: "Chung", comment: "Now, you may wonder why you’re not making Cookie a subclass of SKSpriteNode. After all, the cookie is something you want to display on the screen. If you’re familiar with the MVC pattern, think of Cookie as a model object that simply describes the data for the cookie. The view is a separate object, stored in the sprite property."), Comment(name: "Chung", comment: "Now, you may wonder why you’re not making Cookie a subclass of SKSpriteNode. After all, the cookie is something you want to display on the screen. If you’re familiar with the MVC pattern, think of Cookie as a model object that simply describes the data for the cookie. The view is a separate object, stored in the sprite property."), Comment(name: "Chung", comment: "Now, you may wonder why you’re not making Cookie a subclass of SKSpriteNode. After all, the cookie is something you want to display on the screen. If you’re familiar with the MVC pattern, think of Cookie as a model object that simply describes the data for the cookie. The view is a separate object, stored in the sprite property."), Comment(name: "Chung", comment: "Now, you may wonder why you’re not making Cookie a subclass of SKSpriteNode. After all, the cookie is something you want to display on the screen. If you’re familiar with the MVC pattern, think of Cookie as a model object that simply describes the data for the cookie. The view is a separate object, stored in the sprite property."),Comment(name: "Chung", comment: "Now, you may wonder why you’re not making Cookie a subclass of SKSpriteNode. After all, the cookie is something you want to display on the screen. If you’re familiar with the MVC pattern, think of Cookie as a model object that simply describes the data for the cookie. The view is a separate object, stored in the sprite property."), Comment(name: "Chung", comment: "Now, you may wonder why you’re not making Cookie a subclass of SKSpriteNode. After all, the cookie is something you want to display on the screen. If you’re familiar with the MVC pattern, think of Cookie as a model object that simply describes the data for the cookie. The view is a separate object, stored in the sprite property."), Comment(name: "Chung", comment: "Now, you may wonder why you’re not making Cookie a subclass of SKSpriteNode. After all, the cookie is something you want to display on the screen. If you’re familiar with the MVC pattern, think of Cookie as a model object that simply describes the data for the cookie. The view is a separate object, stored in the sprite property."), Comment(name: "Chung", comment: "Now, you may wonder why you’re not making Cookie a subclass of SKSpriteNode. After all, the cookie is something you want to display on the screen. If you’re familiar with the MVC pattern, think of Cookie as a model object that simply describes the data for the cookie. The view is a separate object, stored in the sprite property."), Comment(name: "Chung", comment: "Now, you may wonder why you’re not making Cookie a subclass of SKSpriteNode. After all, the cookie is something you want to display on the screen. If you’re familiar with the MVC pattern, think of Cookie as a model object that simply describes the data for the cookie. The view is a separate object, stored in the sprite property."),Comment(name: "Chung", comment: "Now, you may wonder why you’re not making Cookie a subclass of SKSpriteNode. After all, the cookie is something you want to display on the screen. If you’re familiar with the MVC pattern, think of Cookie as a model object that simply describes the data for the cookie. The view is a separate object, stored in the sprite property."), Comment(name: "Chung", comment: "Now, you may wonder why you’re not making Cookie a subclass of SKSpriteNode. After all, the cookie is something you want to display on the screen. If you’re familiar with the MVC pattern, think of Cookie as a model object that simply describes the data for the cookie. The view is a separate object, stored in the sprite property."), Comment(name: "Chung", comment: "Now, you may wonder why you’re not making Cookie a subclass of SKSpriteNode. After all, the cookie is something you want to display on the screen. If you’re familiar with the MVC pattern, think of Cookie as a model object that simply describes the data for the cookie. The view is a separate object, stored in the sprite property."), Comment(name: "Chung", comment: "Now, you may wonder why you’re not making Cookie a subclass of SKSpriteNode. After all, the cookie is something you want to display on the screen. If you’re familiar with the MVC pattern, think of Cookie as a model object that simply describes the data for the cookie. The view is a separate object, stored in the sprite property."), Comment(name: "Chung", comment: "Now, you may wonder why you’re not making Cookie a subclass of SKSpriteNode. After all, the cookie is something you want to display on the screen. If you’re familiar with the MVC pattern, think of Cookie as a model object that simply describes the data for the cookie. The view is a separate object, stored in the sprite property.")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    var selectedIndex: IndexPath? {
        didSet{
            tableView.beginUpdates()
            tableView.endUpdates()
        }
    }
    
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        cell.nameLabel.text = data[indexPath.row].name
        cell.nameTextView.text = data[indexPath.row].comment
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedIndex = indexPath == selectedIndex ? nil : indexPath
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let height = heightComment(at: indexPath) + 70
        return indexPath == selectedIndex ? height : 50
    }
    
    func heightComment(at indexPath: IndexPath) -> CGFloat {
        let widthString = data[indexPath.row].comment.widthOfString(usingFont: UIFont.systemFont(ofSize: 14))
        let widthConstraint = UIScreen.main.bounds.width - 50
        let heightString = (widthString/widthConstraint) * data[indexPath.row].comment.heightOfString(usingFont: UIFont.systemFont(ofSize: 14))
        return heightString
    }
}
