import 'package:portfolio/model/project_model.dart';

List<ProjectModel> projectList = [
  ProjectModel(
    projectName: "Anime-Collection",
    description:
        "This is a full-stack application that you can see a lot of information of such famous anime.",
    repositoryPath: "https://github.com/honganji/anime-collection-frontend",
    imagePath: "assets/img/anime-collection.png",
  ),
  ProjectModel(
    projectName: "NEAR-Election-dApp",
    description:
        "This is a decentralized app that you can vote safely on NEAR block chain. ",
    repositoryPath: "https://github.com/honganji/NEAR-Election-dApp",
    imagePath: "assets/img/election_dapp.png",
  ),
  ProjectModel(
    projectName: "ETH-Yield-Farm",
    description:
        "This is a decentralized app that you can invest your tokens to Ethereum block chain. ",
    repositoryPath: "https://github.com/honganji/ETH-Yield-Farm",
    imagePath: "assets/img/yield_farm.png",
  ),
  ProjectModel(
    projectName: "Mulpay",
    description:
        "This is a decentralized app that you can swap tokens on Aurora block chain.",
    repositoryPath: "https://github.com/honganji/Aurora-MulPay",
    imagePath: "assets/img/swap_dapp.png",
  ),
];
