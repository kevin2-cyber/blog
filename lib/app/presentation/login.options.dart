import 'package:blog/app/presentation/home.dart';
import 'package:blog/app/presentation/sign.up.dart';
import 'package:blog/app/presentation/widget/button.dart';
import 'package:blog/app/presentation/widget/login.image.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../core/assets.dart';
import '../../core/constants.dart';
import '../../model/blog.dart';

class LoginOptions extends StatefulWidget {
  const LoginOptions({super.key});

  @override
  State<LoginOptions> createState() => _LoginOptionsState();
}

class _LoginOptionsState extends State<LoginOptions> {

  void gotoSignUp() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUp()));
  }

  var blogs = [
    Blog(image: Assets.image1,
        title: "Fashion Forward: The Latest Trends and Style Insights",
        description: "Discover the latest trends and insights in fashion, beauty, and lifestyle with our curated blog."),
    Blog(image: Assets.image2,
        title: "Tech Talk: Exploring Innovation and Technology",
        description: "Explore the world of technology and innovation through our informative and engaging blog."),
    Blog(image: Assets.image3,
        title: "Sports Buzz: Game Highlights and Athlete Interviews",
        description: "Stay up-to-date with the world of sports, from game highlights to athlete interviews, on our dynamic blog."),
    Blog(image: Assets.image4,
        title: "Foodie Haven: Mouthwatering Recipes and Restaurant Reviews",
        description: "Unleash your inner foodie with our mouthwatering recipes, restaurant reviews, and culinary tips on our blog."),
    Blog(image: Assets.image5,
        title: "Wanderlust Chronicles: Travel Adventures and Destination Guides",
        description: "Find inspiration for your next travel adventure through captivating stories and destination guides on our blog."),
    Blog(image: Assets.image6,
        title: "Empower Yourself: Motivation and Personal Development Tips",
        description: "Get your daily dose of motivation and personal development tips from our empowering blog."),
    Blog(image: Assets.image7,
        title: "Global Insight: Current Events and News Analysis",
        description: "Stay informed about current events and global news through our comprehensive and thought-provoking blog."),
    Blog(image: Assets.image8,
        title: "Healthy Living Guide: Fitness, Nutrition, and Well-being",
        description: "Unlock the secrets to a healthy lifestyle with our expert advice on fitness, nutrition, and mental well-being."),
    Blog(image: Assets.image1,
        title: "Artistic Impressions: Exploring Arts and Culture",
        description: "Discover the world of arts and culture through in-depth articles, artist profiles, and exhibition reviews on our blog."),
    Blog(image: Assets.image2,
        title: "Entertainment Update: Trends and Buzz in the Industry",
        description: "Stay connected with the latest trends and updates in the entertainment industry on our entertaining blog."),
    Blog(image: Assets.image3,
        title: "Business Insider: Entrepreneurship and Growth Strategies",
        description: "Get insider tips and tricks for successful entrepreneurship and business growth from our experienced bloggers."),
    Blog(image: Assets.image4,
        title: "Literary Haven: Book Recommendations and Author Spotlights",
        description: "Delve into the world of literature with book recommendations, author interviews, and literary discussions on our blog."),
    Blog(image: Assets.image5,
        title: "Melody Matters: Music Spotlights and Concert Reviews",
        description: "Embrace your love for music with our blog featuring artist spotlights, album reviews, and concert coverage."),
    Blog(image: Assets.image6,
        title: "Financial Wisdom: Insights into Investments and Savings",
        description: "Stay ahead in the world of finance with our informative blog, offering insights into investments, savings, and financial planning."),
    Blog(image: Assets.image7,
        title: "Family Matters: Parenting and Family Life Stories",
        description: "Explore the realm of parenting and family life with our blog, providing tips, advice, and heartwarming stories."),
    Blog(image: Assets.image8,
        title: "Home Decor Delights: Trends and Interior Design Tips",
        description: "Discover the latest trends in home decor, DIY projects, and interior design inspiration on our stylish blog."),
    Blog(image: Assets.image1,
        title: "Gaming Galore: Reviews and Updates for Gamers",
        description: "Indulge in the world of gaming, from game reviews to industry updates, on our exciting blog for gamers."),
    Blog(image: Assets.image2,
        title: "Science Spotlight: Exploring Science and Technology",
        description: "Stay connected with the latest developments in science and technology through our informative and engaging blog."),
    Blog(image: Assets.image3,
        title: "Nature's Wonders: Environmental Conservation and Nature Exploration",
        description: "Explore the wonders of nature and environmental conservation through our educational and inspiring blog."),
    Blog(image: Assets.image4,
        title: "Through the Lens: Photography Tips and Inspiration",
        description: "Uncover the secrets of successful photography with tips, tutorials, and inspiring visuals on our blog."),
    Blog(image: Assets.image5,
        title: "Wellness Matters: Health and Wellness Insights",
        description: "Stay informed about health and wellness topics, from fitness routines to mental health strategies, on our blog."),
    Blog(image: Assets.image6,
        title: "Sustainable Living: Eco-Friendly Tips and Practices",
        description: "Discover the latest trends in sustainable living and eco-friendly practices on our blog dedicated to a greener lifestyle."),
    Blog(image: Assets.image7,
        title: "Artistic Visions: Showcasing Art and Photography",
        description: "Immerse yourself in the world of art and photography with our visually stunning blog featuring artist showcases and exhibitions."),
    Blog(image: Assets.image8,
        title: "Leisurely Pursuits: Hobbies and Relaxation Inspiration",
        description: "Explore the world of hobbies and leisure activities, from gardening to crafting, on our blog dedicated to all things leisurely."),
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.arrow_back_sharp,
                    color: Constants.blueVogue,
                  ),
                  Text(
                    'Skip',
                    style: TextStyle(
                      color: Constants.blueVogue,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              const LoginImage(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              RibbonButton(
                (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Home(blogs: blogs)));
                },
                Constants.redRibbon,
                'Continue with Email',
                Colors.white,
                icon: const Icon(
                  Icons.email_outlined,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              RibbonButton(
                (){},
                Constants.athensGray,
                'Sign in with Google',
                Constants.blueVogue,
                icon: const Icon(
                  Icons.g_mobiledata,
                  color: Constants.blueVogue,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              RibbonButton(
                (){},
                Constants.athensGray,
                'Sign in with Apple ID',
                Constants.blueVogue,
                icon: const Icon(
                  Icons.apple,
                  color: Constants.blueVogue,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Text.rich(
                TextSpan(children: [
                  const TextSpan(text: 'Don\'t have an account?'),
                  TextSpan(
                      text: ' Sign Up',
                      style: const TextStyle(color: Constants.redRibbon),
                    recognizer: TapGestureRecognizer()..onTap = () => gotoSignUp(),
                  ),
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
