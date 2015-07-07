import UIKit

class NearbyTableViewController: UITableViewController {

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10;
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        switch (indexPath.section, indexPath.row) {
        case (0, 0):
            return tableView.dequeueReusableCellWithIdentifier(NearestTheaterTableViewCell.reuseIdentifier) as! UITableViewCell
        default:
            return tableView.dequeueReusableCellWithIdentifier(TheaterTableViewCell.reuseIdentifier) as! UITableViewCell
        }
    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        switch (indexPath.section, indexPath.row) {
        case (0, 0):
            return NearestTheaterTableViewCell.defaultHeight
        default:
            return TheaterTableViewCell.defaultHeight
        }
    }
}
