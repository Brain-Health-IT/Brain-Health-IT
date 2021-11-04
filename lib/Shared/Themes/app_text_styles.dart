import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'appcolors.dart';

class TextStyles {
  static final titleRegular = GoogleFonts.lexendDeca(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: Colors.black,
  );
  static final body = GoogleFonts.lexendDeca(
    fontSize: 15,
    fontWeight: FontWeight.w400,
    color: Colors.black,
  );

  static final titleBoldBackground = GoogleFonts.lexendDeca(
    fontSize: 15,
    fontWeight: FontWeight.w800,
    color: AppColors.green,
  );
  static final titleBold = GoogleFonts.inter(
    fontSize: 19,
    fontWeight: FontWeight.w800,
    color: Colors.black,
  );

  static final buttonBackground = GoogleFonts.inter(
    fontSize: 15,
    fontWeight: FontWeight.w400,
    color: AppColors.background,
  );
  static final buttonText = GoogleFonts.inter(
    fontSize: 15,
    fontWeight: FontWeight.w400,
    color: AppColors.confirm,
  );

  static final buttonBoldBackground = GoogleFonts.inter(
    fontSize: 15,
    fontWeight: FontWeight.w700,
    color: AppColors.background,
  );
  static final captionBackground = GoogleFonts.lexendDeca(
    fontSize: 13,
    fontWeight: FontWeight.w400,
    color: AppColors.background,
  );
  static final captionShape = GoogleFonts.lexendDeca(
    fontSize: 13,
    fontWeight: FontWeight.w400,
    color: AppColors.shape,
  );

  static final captionBoldBackground = GoogleFonts.lexendDeca(
    fontSize: 13,
    fontWeight: FontWeight.w600,
    color: AppColors.background,
  );
  static final captionBoldShape = GoogleFonts.lexendDeca(
    fontSize: 13,
    fontWeight: FontWeight.w600,
    color: AppColors.shape,
  );
}
