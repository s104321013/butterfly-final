//
//  ButterflyTableViewController.swift
//  MidProject2
//
//  Created by csie on 2018/5/9.
//  Copyright © 2018年 csie. All rights reserved.
//

import UIKit

class ButterflyTableViewController: UITableViewController {
    var number: Int!

    var selectButterfly: Butterfly = Butterfly()
   
    var butterfly1:[Butterfly] = [Butterfly(name:"台灣麝香鳳蝶",scientific:"Byasa impediens febanus",image:"butterfly1",food:"馬兜鈴",description:"外觀近似麝香鳳蝶但本種雄蝶翅膀表面黑褐色，後翅亞外緣和肛角附近有的弦月狀斑紋較麝香鳳蝶大。",location:"分布於台灣低、中海拔山區。"),
                                  Butterfly(name:"紅斑鳳蝶",scientific:"Papilio rumanzovia",image:"butterfly5",food:"樟樹",description:"又名紅斑大鳳蝶、基紅鳳蝶、紅斑甌蝶、紅基鳳蝶，為鳳蝶科鳳蝶屬下的一個種。",location:"分布於全島低海拔到中海拔山區。"),
                                  Butterfly(name:"曙鳳蝶",scientific:"Atrophaneura horishana ",image:"butterfly3",food:"馬兜鈴",description:"下翅腹面後半桃紅色布滿黑色斑點，像西瓜上的黑仔，雄蝶翅膀表面全黑色。",location:"分布於中海拔山區。"),
                                  Butterfly(name:"黃裳鳳蝶",scientific:"Troides aeacus formosanus Rothschild",image:"butterfly2",food:"馬兜鈴",description:"雄蝶下翅表面黃色，翅緣具黑色斑，雌蝶後翅表面具黑色斑塊，呈黑、黃相間的斑紋。",location:"分布於低海拔山區，全台都有。"),
                                  Butterfly(name:"雙環鳳蝶",scientific:"Papilio hopponis Matsumura",image:"butterfly4",food:"食茱萸、台灣黃蘗",description:"前翅面黑色密布綠色螢光鱗，後翅面近似前翅但中央至前緣有藍色塊狀斑。",location:"分布於中、高海拔山區。")]
    
    var butterfly2:[Butterfly] = [Butterfly(name:"埔里三線蝶",scientific:"Neptis taiwana",image:"butterfly6",food:"薔薇科之台灣石楠，樟等植物",description:"翅膀表面黑褐色，上翅的長條帶近外 端有缺角 ，但並未中斷。翅腹面橙褐色。",location:"分布於低中海拔山區。"),
                                  Butterfly(name:"寬帶三線蝶",scientific:"AAthyma jina sauteri",image:"butterfly7",food:"葛藤",description:"軀體背側黑褐色，腹部前端有一白環；腹側白色。複眼疏被毛。",location:"分布於臺灣本島中海拔地區。"),
                                  Butterfly(name:"台灣三線蝶",scientific:"Neptis nata lutatia",image:"butterfly8",food:"山黃麻、菊花木",description:"觸角黑色，端部黃褐色，翅膀表面黑褐色，展翅時有有3條白色橫帶，其中前翅的橫帶為近似種中最細，又稱細帶環蛺蝶，後翅有2條橫帶，翅腹面黑褐色也是近似種中最深 。",location:"在低海拔山區。"),
                                  Butterfly(name:"寬紋三線蝶",scientific:"Neptis reducta Fruhstorfer",image:"butterfly9",food:"吸水或取食動物排遺",description:"翅面黑褐色，外觀近似小三線蝶，但本種體型較大，前翅的橫帶，眉紋狹長，末端幾乎達外緣的橢圓形白斑位置，觸角端部無黃斑或不顯。",location:"台灣特有種，發現於山坡下的溝渠附近。"),
                                    Butterfly(name:"寬紋三線蝶",scientific:"Neptis reducta Fruhstorfer",image:"butterfly9",food:"吸水或取食動物排遺",description:"翅面黑褐色，外觀近似小三線蝶，但本種體型較大，前翅的橫帶，眉紋狹長，末端幾乎達外緣的橢圓形白斑位置，觸角端部無黃斑或不顯。",location:"台灣特有種，發現於山坡下的溝渠附近。")]
                                  
    
    var butterfly3:[Butterfly] = [Butterfly(name:"密點玄灰蝶/霧社黑燕小灰蝶",scientific:"Tongeia filicaudis mushanus",image:"butterfly10",food:"青剛櫟",description:"小型灰蝶。軀體背側暗褐色，腹側白色。前翅前緣弧形、外緣圓弧形。後翅圓，CuA2脈末端有一小尾突。",location:"臺灣本島低、中海拔地帶，馬祖亦有分布，但當地族群屬於指名亞種。"),
                                  Butterfly(name:"青珈波灰蝶/淡青長尾波紋小灰蝶",scientific:"Catochrysops panormus exiguus",image:"butterfly11",food:"青剛櫟",description:"中型灰蝶。有雌雄二型性。複眼被毛。軀體背側泛淺藍色暗褐色，腹側白色。前翅外緣、前緣弧形。",location:"臺灣本島低、中海拔地區，北部較少。"),
                                  Butterfly(name:"碧翠灰蝶/江崎綠小灰蝶",scientific:"Chrysozephyrus esakii",image:"butterfly12",food:"青剛櫟",description:"中型灰蝶。具有雌雄二型性。軀體褐色。前翅前、外緣弧形。後翅CuA2脈末端有尾突。",location:"分布於臺灣本島中、高海拔地區。"),
                                  Butterfly(name:"燕尾紫灰蝶/紫燕蝶",scientific:"Arhopala japonica",image:"butterfly13",food:"青剛櫟",description:"中型灰蝶。軀體背側褐色，腹側白色。前翅於翅頂有一小尖突，後翅圓，CuA2脈末端有小尾突，通常很短，也有較長的個體。",location:"分布於臺灣本島平地至中海拔地區。"),
                                  Butterfly(name:"白雅波灰蝶/小白波紋小灰蝶",scientific:"Jamides celeno",image:"butterfly14",food:"青剛櫟",description:"中小型灰蝶。有雌雄二型性。軀體背側暗褐色，腹側白色。前翅外緣、前緣弧形。後翅CuA2脈末端有尾突。",location:"分布於臺灣本島低海拔地區以及蘭嶼。")]
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.largeTitleDisplayMode = .never
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 5
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "Cell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! ButterflyTableViewCell
        // Configure the cell...
        if number==1{
            selectButterfly = butterfly1[indexPath.row]
            //cell.nameLabel.text = butterfly1[indexPath.row].name
            //cell.ImageView.image = UIImage(named:butterfly1[indexPath.row].image)
            navigationItem.title = "鳳蝶科"
            navigationItem.backBarButtonItem?.title = "鳳蝶科"
        }
        else if number==2{
            selectButterfly = butterfly2[indexPath.row]
            //cell.nameLabel.text = butterfly2[indexPath.row].name
            //cell.ImageView.image = UIImage(named:butterfly2[indexPath.row].image)
            navigationItem.title = "三線蝶"
            navigationItem.backBarButtonItem?.title = "三線蝶"
        }
        else {
            selectButterfly = butterfly3[indexPath.row]
            //cell.nameLabel.text = butterfly3[indexPath.row].name
            //cell.ImageView.image = UIImage(named:butterfly3[indexPath.row].image)
            navigationItem.title = "灰蝶科"
            navigationItem.backBarButtonItem?.title = "灰蝶科"
        }
        cell.nameLabel.text = selectButterfly.name
        cell.ImageView.image = UIImage(named:selectButterfly.image)
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showButterflyDetail"{
            if let indexPath = tableView.indexPathForSelectedRow{
                let destinationController = segue.destination as! ButterflyDetailViewController
                if number==1{
                    destinationController.butterfly = butterfly1[indexPath.row]
                }
                else if number==2{
                    destinationController.butterfly = butterfly2[indexPath.row]
                }
                else {
                    destinationController.butterfly = butterfly3[indexPath.row]
                }
            }
        }
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
