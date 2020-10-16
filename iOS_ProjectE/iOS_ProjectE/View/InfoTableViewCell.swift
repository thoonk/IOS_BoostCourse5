//
//  InfoTableViewCell.swift
//  iOS_ProjectE
//
//  Created by 김태훈 on 2020/10/05.
//

import UIKit

class InfoTableViewCell: UITableViewCell {

    @IBOutlet weak var thumbImageView: UIImageView!
    @IBOutlet weak var gradeImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var genreDurationLabel: UILabel!
    @IBOutlet weak var reservationLabel: UILabel!
    @IBOutlet weak var userRatingLabel: UILabel!
    @IBOutlet weak var starRatingView: StarRatingView!{
        didSet{
            starRatingView.isEditable = false
            starRatingView.maxRating = 10
            starRatingView.emptyImage = UIImage(named: "ic_star_large")
            starRatingView.halfImage = UIImage(named: "ic_star_large_half")
            starRatingView.fullImage = UIImage(named: "ic_star_large_full")
        }
    }
    @IBOutlet weak var audienceLabel: UILabel!
    
    func mappingData(_ data: Movie){
        titleLabel.text = data.title
        dateLabel.text = data.date
        genreDurationLabel.text = "\(data.genre)/\(data.duration)분"
        reservationLabel.text = "\(data.reservationGrade)위 \(data.reservationRate)%"
        userRatingLabel.text = "\(data.userRating)"
        audienceLabel.text = data.audience.toStringWithComma() ?? "\(data.audience)"
        starRatingView.currentRating = data.userRating
    }
}
