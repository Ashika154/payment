import 'package:flutter/material.dart';

import '../utils/colors.dart';
import '../utils/font.dart';

class TransferFailedView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Transfer wallet balance",style:TextStyle(
            color: AppColors.fontColor,fontWeight: FontWeight.bold,fontSize: ConstSizes.fontSizeLg
        ),),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 120,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundColor: AppColors.greenColor,
                  child: Center(
                    child:Icon(Icons.check, color: AppColors.whiteColor, size: ConstSizes.iconSm),
                  ),
                ),
                CircleAvatar(
                  radius: 40,
                  child: Center(
                    child:Icon(Icons.account_balance,color:AppColors.tealColor ,size:ConstSizes.iconSm,),

                  ),
                )


              ],
            ),
            SizedBox(height: 10),
            Text(
              "Transfer successful",
              style: TextStyle(
                fontSize: ConstSizes.fontSizeLg,
                fontWeight: FontWeight.bold,
                color: AppColors.greenColor,
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Payment was successfully sent to your bank account.",
                textAlign: TextAlign.center,
                style: TextStyle(color: AppColors.lightGreyColor),
              ),
            ),
            SizedBox(height: 30),
            Text(
              "3444.58 GHS",
              style: TextStyle(fontSize: ConstSizes.fontSizeLg, fontWeight: FontWeight.w600,),
            ),
            Spacer(),
            SizedBox(height: 200),
            SizedBox(
              width: 300,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                },
                child: Text("Continue", style: TextStyle(fontSize: ConstSizes.fontSizeMd,color: AppColors.whiteColor)),
                style: ElevatedButton.styleFrom(
                  backgroundColor:AppColors.primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}