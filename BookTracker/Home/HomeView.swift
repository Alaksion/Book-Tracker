//
//  HomeView.swift
//  BookTracker
//
//  Created by Lucca Beurmann on 26/11/22.
//

import Foundation
import UIKit

final class HomeView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpViews()
        setUpConstraints()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    private lazy var contentView: UIStackView = {
        let view = UIStackView(arrangedSubviews: [sampleText])
        view.axis = .vertical
        return view
    }()
    
    private lazy var sampleText: UITextView = {
        let view = UITextView()
        view.text = "Hello world"
        return view
    }()
    
}

extension HomeView: BaseViewProtocol {
    func setUpConstraints() {
        NSLayoutConstraint.activate([
            contentView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            contentView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor),
            contentView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor)
        ])
        contentView.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func setUpViews() {
        self.addSubview(contentView)
        self.backgroundColor = .systemBackground
    }
}
