import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hyperhire_assigment/data/models/product.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'product_repository.g.dart';

@riverpod
ProductRepository productRepository(Ref ref) => ProductRepository();

class ProductRepository {
  Future<Product> getLatestRevieweProduct() async {
    return Product(
      brand: 'AMD 라이젠 5 ',
      type: '5600X 버미어 정품 멀티팩',
      rank: 10,
      reviewCount: 1,
      reviewScore: 4.07,
      comment: [
        ProductComment(
          comment: '멀티 작업도 잘 되고 꽤 괜찮습니다. 저희 회사 고객님들에게도 추천 가능한 제품인 듯 합니다.',
        ),
        ProductComment(
          comment: '3600에서 바꾸니 체감이 살짝 되네요. 버라이어티한 느낌 까지는 아닙니다.',
          images: ['comment_1.png', 'comment_2.png', 'comment_3.png'],
        ),
      ],
      image: 'product_amd.png',
      tag: [
        '“가격 저렴해요”',
        '“CPU온도 고온”',
        '“서멀작업 가능해요”',
        '“게임 잘 돌아가요”',
        '“발열이 적어요”',
      ],
      reviewTime: '2022.12.09',
    );
  }

  Future<List<Product>> getTopProducts() async {
    return [
      Product(
        brand: 'LG전자',
        type: '스탠바이미 27ART10AKPL (스탠)',
        rank: 1,
        reviewCount: 216,
        reviewScore: 4.89,
        comment: [
          ProductComment(
            comment:
                '화면을 이동할 수 있고 전환도 편리하다는 점이 제일 마음에 들었어요. 배송도 빠르고 친절하게 받을 수 있어서 좋았습니다.',
          ),
          ProductComment(comment: '스탠바이미는 사랑입니다!️'),
        ],
        image: 'product_1.png',
        tag: ['LG전자', '편리성'],
      ),

      Product(
        brand: 'LG전자',
        type: '울트라HD 75UP8300KNA (스탠드)',
        rank: 2,
        reviewCount: 136,
        reviewScore: 4.36,
        comment: [
          ProductComment(comment: '화면 잘 나오고... 리모컨 기능 좋습니다.'),
          ProductComment(
            comment:
                '넷플 아마존 등 버튼하나로 바로 접속 되고디스플레이는 액정문제 없어보이고소리는 살짝 약간 감이 있으나 ^^; 시끄러울까봐 그냥 블루투스 헤드폰 구매 예정이라 문제는 없네요. 아주 만족입니다!!',
          ),
        ],
        image: 'product_2.png',
        tag: ['LG전자', '고화질'],
      ),

      Product(
        brand: '라익미',
        type: '스마트 DS4001L NETRANGE (스탠드)GX30K WIN10 (SSD 256GB)',
        rank: 3,
        reviewCount: 98,
        reviewScore: 3.98,
        comment: [
          ProductComment(
            comment: '반응속도 및 화질이나 여러면에서는  이정도에 이 정도 성능이면 차고 넘칠만 합니다',
          ),
          ProductComment(
            comment:
                '중소기업TV 라익미 제품을 사용해보았는데 뛰어난 가성비와 더불어 OTT 서비스에 오픈 브라우저 까지 너무 마음에 들게끔 기능들을 사용 가능했고',
          ),
        ],
        image: 'product_3.png',
        tag: ['라익미', '가성비'],
      ),
    ];
  }
}
