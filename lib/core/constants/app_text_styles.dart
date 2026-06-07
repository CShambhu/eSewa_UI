import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTextStyles {
  AppTextStyles._();

  // App bar titles — "Statement", "Menu"
  static const appBarTitle = TextStyle(
    fontSize: 22,
    color: AppColors.textPrimary,
  );

  // "Hi, User" in home app bar
  static const greeting = TextStyle(
    fontSize: 20,
    color: AppColors.textSecondary,
  );

  // "Utility & Bill Payments", "Travels & Ticketing"
  static const sectionTitle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: AppColors.textSecondary,
  );

  // "My Account" in more screen
  static const sectionTitleWhite = TextStyle(
    fontSize: 16,
    color: AppColors.textPrimary,
  );

  // "NPR" label
  static const balanceLabel = TextStyle(
    fontSize: 13,
    color: AppColors.textSecondary,
  );

  // "198.25" balance number
  static const balanceAmount = TextStyle(
    fontSize: 20,
    color: AppColors.textSecondary,
  );

  // "Balance", "Fonepoints", "Load Money" etc
  static const balanceSubtitle = TextStyle(
    fontSize: 15,
    color: AppColors.textSecondary,
  );

  // NCELL TOPUP
  static const topUp = TextStyle(fontSize: 16, color: AppColors.textSecondary);

  // time  Balance
  static const timeBalance = TextStyle(
    fontSize: 12,
    color: AppColors.textSecondary,
  );

  // Amount
  static const amount = TextStyle(fontSize: 17, color: AppColors.textSecondary);

  // Widget icons text
  static const widgetIconsText = TextStyle(
    fontSize: 13,
    color: AppColors.textSecondary,
  );

  // Grid icon labels — "Topup & Data", "Electricity"
  static const gridLabel = TextStyle(
    fontSize: 13,
    color: AppColors.textSecondary,
  );

  // #MORE Account list item title — "Business Account"
  static const listItemTitle = TextStyle(
    fontSize: 15,
    color: AppColors.textPrimary,
  );

  // Account list item subtitle — "View your associated..."
  static const listItemSubtitle = TextStyle(
    fontSize: 12,
    color: AppColors.textPrimary,
  );

  // View ALl
  static const viewALl = TextStyle(fontSize: 20, color: AppColors.success);

  // Statement labels
  static const statementLabel = TextStyle(
    fontSize: 15,
    color: AppColors.textSecondary,
  );

  // Red debit amounts
  static const debitAmount = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: AppColors.danger,
  );

  // Login Heading
  static const loginHeading = TextStyle(
    fontSize: 40,
    color: AppColors.textPrimary,
  );

  //Login Body
  static const loginBody = TextStyle(
    fontSize: 17,
    color: AppColors.textPrimary,
  );

  //Login small
  static const loginSmall = TextStyle(
    fontSize: 13,
    color: AppColors.textPrimary,
  );

  // Login button
  static const loginAction = TextStyle(fontSize: 17, color: AppColors.success);
}
