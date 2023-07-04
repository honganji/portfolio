import 'package:portfolio/model/project_model.dart';

List<ProjectModel> projectList = [
  ProjectModel(
    projectName: "i-service",
    description:
        "This is a mobile application that you can manage your information easily. You can give access rights for institutions like hospital or airport so thatyou don't have to input your information repeatedly.",
    repositoryPath: "https://github.com/honganji/i-service",
    imagePath: "assets/img/i-service.png",
  ),
  ProjectModel(
    projectName: "Mulpay",
    description:
        "This is a decentralized app that you can swap tokens on Aurora block chain.",
    repositoryPath: "https://github.com/honganji/Aurora-MulPay",
    imagePath: "assets/img/swap_dapp.png",
  ),
  ProjectModel(
    projectName: "NEAR-Election-dApp",
    description:
        "This is a decentralized app that you can vote safely on NEAR block chain. ",
    repositoryPath: "https://github.com/unchain-tech/NEAR-Election-dApp",
    imagePath: "assets/img/election_dapp.png",
  ),
  ProjectModel(
    projectName: "ETH-Yield-Farm",
    description:
        "This is a decentralized app that you can invest your tokens to Ethereum block chain. ",
    repositoryPath: "https://github.com/honganji/ETH-Yield-Farm",
    imagePath: "assets/img/yield_farm.png",
  ),
];
