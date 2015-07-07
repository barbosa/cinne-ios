import UIKit

class NearestTheaterTableViewCell: UITableViewCell, UICollectionViewDataSource {
 
    static let reuseIdentifier = "NearestTheaterTableViewCell"
    static let defaultHeight:CGFloat = 310
    
    @IBOutlet weak var moviesCollectionView: UICollectionView!
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5;
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(PosterCollectionViewCell.reuseIdentifier, forIndexPath: indexPath) as! UICollectionViewCell
        return cell
    }
}