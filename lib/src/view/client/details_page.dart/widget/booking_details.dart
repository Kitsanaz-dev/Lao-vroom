import 'package:flutter/material.dart';
import 'package:lao_vroom/src/service/theme_service.dart';
import 'package:lao_vroom/src/view/client/details_page.dart/widget/payment_button.dart';
import 'package:lao_vroom/src/view/client/details_page.dart/widget/price.dart';

class BookingDetails extends StatelessWidget {
  const BookingDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //Price
        const Price(),
        const SizedBox(height: 5),

        //Pickup Location
        _buildInfoTile(
          icon: Icons.location_on,
          title: "Pickup Location",
          subtitle: "Khuvieng road, Sisattanak District",
          actionIcon: Icons.info_outline,
          context: context,
        ),
        const SizedBox(height: 5),
        //Starting Date
        _buildInfoTile(
          icon: Icons.calendar_today,
          title: "Starting Date",
          subtitle: "10/10/2010",
          actionText: "Change",
          context: context,
        ),
        const SizedBox(height: 5),
        //Pickup Time
        _buildInfoTile(
          icon: Icons.access_time,
          title: "Pickup Time",
          subtitle: "10:00 am",
          context: context,
        ),
        const SizedBox(height: 5),
        //Drop-off Date
        _buildInfoTile(
          icon: Icons.calendar_today,
          title: "Drop-off Date",
          subtitle: "10/10/2010",
          actionText: "Change",
          context: context,
        ),
        const SizedBox(height: 5),
        //Drop-off Time
        _buildInfoTile(
          icon: Icons.access_time,
          title: "Drop-off Time",
          subtitle: "8:00 pm",
          context: context,
        ),
        const SizedBox(height: 5),
        //Booking Summary
        _buildSummarySection(
          context: context,
        ),
        const SizedBox(height: 5),
        const PaymentButton(),
      ],
    );
  }

  Widget _buildInfoTile({
    required BuildContext context,
    required IconData icon,
    required String title,
    required String subtitle,
    String? actionText,
    IconData? actionIcon,
  }) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 6,
            offset: const Offset(0, 3),
          ),
        ],
        color: context.color.surface,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Icon(
            icon,
            color: context.color.primary,
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontWeight: context.typo.bold,
                    fontSize: context.typo.body1.fontSize,
                    color: context.color.subtext,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  subtitle,
                  style: TextStyle(
                    fontSize: context.typo.body1.fontSize,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          if (actionText != null)
            Text(
              actionText,
              style: TextStyle(
                color: context.color.primary,
              ),
            )
          else if (actionIcon != null)
            Icon(
              actionIcon,
              color: context.color.primary,
            ),
        ],
      ),
    );
  }

  Widget _buildSummarySection({
    required BuildContext context,
  }) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 6,
            offset: const Offset(0, 3),
          ),
        ],
        color: context.color.surface,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Booking Summary",
            style: context.typo.subtitle1.copyWith(
              fontWeight: context.typo.bold,
              color: context.color.subtext,
            ),
          ),
          const SizedBox(height: 12),
          _buildSummaryRow(
            "Duration",
            "10 hours",
          ),
          _buildSummaryRow(
            "Price",
            "\$100",
          ),
          const Divider(),
          _buildSummaryRow(
            "Total",
            "\$100",
            isTotal: true,
          ),
        ],
      ),
    );
  }

  Widget _buildSummaryRow(String title, String value, {bool isTotal = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 4,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 14,
              fontWeight: isTotal ? FontWeight.bold : FontWeight.normal,
            ),
          ),
          Text(
            value,
            style: TextStyle(
              fontSize: 14,
              fontWeight: isTotal ? FontWeight.bold : FontWeight.normal,
              color: isTotal ? Colors.blue : Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
