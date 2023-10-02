import 'package:discounts/cards/couponcards.dart';
import 'package:flutter/material.dart';

class TBar extends StatefulWidget {
  const TBar({super.key});

  @override
  State<TBar> createState() => _TBarState();
}

class _TBarState extends State<TBar> with TickerProviderStateMixin{
  @override
  Widget build(BuildContext context) {
    TabController tabController=TabController(length: 3, vsync:this );
    return  Column(
        children: [
         
            Container(
              margin: const EdgeInsets.all(20),
              
              width: double.maxFinite,
              height: 20,
              child: TabBar(
                
                 controller: tabController,
                 labelColor: Colors.yellow,
                 indicatorColor: Colors.yellow,
                 unselectedLabelColor: Colors.grey,
                tabs: const [
                  Tab(text: 'About',),
                  Tab(text: 'Discounts'),
                  Tab(text: 'WorkingHours'),
                ],
              ),
            ),
          
           SizedBox(
            
             width: double.maxFinite,
              height: 300,
    
             child: TabBarView(
              
              controller: tabController,
                children: const [
                   Icon(Icons.directions_transit),
                  Discounts(),
                  Icon(Icons.directions_bike),
                ],),
           )
          
        ],
      );
  }
}



class Discounts extends StatelessWidget {
  const Discounts({super.key});

  @override
  Widget build(BuildContext context) {

    List<CouponCard> coupons =[const CouponCard(url: 'https://images.unsplash.com/photo-1695653420644-ab3d6a039d53?ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2069&q=80',
      ttl:'DISCOUNT TITLE',details: 'Details of discount',discount: '25',days: '3',),
      const CouponCard(url: 'https://images.unsplash.com/photo-1695653420644-ab3d6a039d53?ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2069&q=80',
      ttl:'DISCOUNT TITLE',details: 'Details of discount',discount: '25',days: '3',),
      const CouponCard(url: 'https://images.unsplash.com/photo-1695653420644-ab3d6a039d53?ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2069&q=80',
      ttl:'DISCOUNT TITLE',details: 'Details of discount',discount: '25',days: '3',),
      const CouponCard(url: 'https://images.unsplash.com/photo-1695653420644-ab3d6a039d53?ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2069&q=80',
      ttl:'DISCOUNT TITLE',details: 'Details of discount',discount: '25',days: '3',),
      const CouponCard(url: 'https://images.unsplash.com/photo-1695653420644-ab3d6a039d53?ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2069&q=80',
      ttl:'DISCOUNT TITLE',details: 'Details of discount',discount: '25',days: '3',),
      const CouponCard(url: 'https://images.unsplash.com/photo-1695653420644-ab3d6a039d53?ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2069&q=80',
      ttl:'DISCOUNT TITLE',details: 'Details of discount',discount: '25',days: '3',),
      ];
    
    return  ListView.separated(
      separatorBuilder:  (context, index) => const SizedBox(
        width: 20,
      ),
      scrollDirection: Axis.horizontal,
      itemCount: coupons.length,
      padding: const EdgeInsets.all(12),
      itemBuilder: (context,index)=> coupons[index]
      );
  }
}