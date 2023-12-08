// Package imports:
import 'package:units_converter/units_converter.dart';

enum QuantityRatio {
  /// SAME UNITS
  gramsPerGram,
  milliGramsPerMilliGram,

  /// SAME TYPES
  milliGramsPerGram,
  milliGramsPerKiloGram,
  gramsPerKiloGram,
  nanoMolesPerMole,
  microMolesPerMole,
  milliMolesPerMole,
  microGramsPerNanoGram,
  nanoGramsPerMilliGram,
  microGramsPerMilliGram,
  nanoGramsPerGram,
  microGramsPerGram,
  nanoGramsPerKiloGram,
  microGramsPerKiloGram,
  picoMolesPerMicroMole,
  nanoMolesPerMilliMole,
  milliLitersPerDeciLiter,

  /// DENSITY
  gramsPerLiter,
  gramsPerCubicCentimeter,
  gramsPerMilliLiter,
  gramsPerDeciLiter,
  kiloGramsPerLiter,
  kiloGramsPerCubicMeter,
  milliGramsPerLiter,
  milliGramsPerDeciLiter,
  milliGramsPerMilliliter,
  milliGramsPerCubicMeter,
  milliGramsPerCubicCentimeter,
  microGramsPerLiter,
  microGramsPerDeciLiter,
  microGramsPerMilliLiter,
  nanoGramsPerLiter,
  nanoGramsPerMilliLiter,
  picoGramsPerLiter,
  picoGramsPerMilliLiter,

  /// MOLAR MASS

  /// RECIPROCAL OF MOLAR MASS
  femtoMolesPerMilliGram,
  nanoMolesPerMilliGram,
  microMolesPerMilliGram,
  molesPerKiloGram,
  femtoMolesPerGram,
  nanoMolesPerGram,
  microMolesPerGram,
  milliMolesPerGram,
  milliMolesPerKiloGram,

  /// MOLAR VOLUME
  molesPerLiter,
  molesPerMilliLiter,
  molesPerCubicMeter,
  milliMolesPerLiter,
  milliMolesPerDeciLiter,
  microMolesPerLiter,
  microMolesPerDeciLiter,
  microMolesPerMilliLiter,
  nanoMolesPerLiter,
  nanoMolesPerDeciLiter,
  nanoMolesPerMilliLiter,
  picoMolesPerLiter,
  picoMolesPerDeciLiter,
  picoMolesPerMilliLiter,
  femtoMolesPerMilliLiter,

  /// OTHER
  // milliMolesPerSquareMeter,
  // microGramsPerSquareMeter,
  // nanoGramsPerSquareMeter,
  // gramsPerSquareMeter,
  picoGramsPerMilliMeter,
  kiloGramsPerSquareMeter,
  milliGramsPerSquareMeter,
  milliLitersPerKiloGram,
  litersPerKilogram,
  kiloCaloriesPerOunce,
}

extension UnitsFromQuantityRatio on QuantityRatio {
  dynamic numeratorUnit() {
    switch (this) {
      case QuantityRatio.nanoMolesPerMole:
        return AMOUNT_OF_SUBSTANCE.nanomoles;

      case QuantityRatio.microMolesPerMole:
        return AMOUNT_OF_SUBSTANCE.micromoles;

      case QuantityRatio.milliMolesPerMole:
        return AMOUNT_OF_SUBSTANCE.millimoles;

      case QuantityRatio.microGramsPerNanoGram:
        return MASS.micrograms;

      case QuantityRatio.nanoGramsPerMilliGram:
        return MASS.nanograms;

      case QuantityRatio.microGramsPerMilliGram:
        return MASS.micrograms;

      case QuantityRatio.milliGramsPerMilliGram:
        return MASS.milligrams;

      case QuantityRatio.nanoGramsPerGram:
        return MASS.nanograms;

      case QuantityRatio.microGramsPerGram:
        return MASS.micrograms;

      case QuantityRatio.milliGramsPerGram:
        return MASS.milligrams;

      case QuantityRatio.gramsPerGram:
        return MASS.grams;

      case QuantityRatio.nanoGramsPerKiloGram:
        return MASS.nanograms;

      case QuantityRatio.microGramsPerKiloGram:
        return MASS.micrograms;

      case QuantityRatio.milliGramsPerKiloGram:
        return MASS.milligrams;

      case QuantityRatio.gramsPerKiloGram:
        return MASS.grams;

      case QuantityRatio.picoMolesPerMicroMole:
        return AMOUNT_OF_SUBSTANCE.picomoles;

      case QuantityRatio.nanoMolesPerMilliMole:
        return AMOUNT_OF_SUBSTANCE.nanomoles;

      case QuantityRatio.milliLitersPerDeciLiter:
        return VOLUME.milliliters;

      case QuantityRatio.picoGramsPerMilliMeter:
        return MASS.picograms;

      // case QuantityRatio.milliMolesPerSquareMeter:
      //   return AMOUNT_OF_SUBSTANCE.millimoles;

      case QuantityRatio.femtoMolesPerMilliGram:
        return AMOUNT_OF_SUBSTANCE.femtomoles;

      case QuantityRatio.nanoMolesPerMilliGram:
        return AMOUNT_OF_SUBSTANCE.nanomoles;

      case QuantityRatio.microMolesPerMilliGram:
        return AMOUNT_OF_SUBSTANCE.micromoles;

      case QuantityRatio.molesPerKiloGram:
        return AMOUNT_OF_SUBSTANCE.moles;

      case QuantityRatio.femtoMolesPerGram:
        return AMOUNT_OF_SUBSTANCE.femtomoles;

      case QuantityRatio.nanoMolesPerGram:
        return AMOUNT_OF_SUBSTANCE.nanomoles;

      case QuantityRatio.microMolesPerGram:
        return AMOUNT_OF_SUBSTANCE.micromoles;

      case QuantityRatio.milliMolesPerGram:
        return AMOUNT_OF_SUBSTANCE.millimoles;

      case QuantityRatio.milliMolesPerKiloGram:
        return AMOUNT_OF_SUBSTANCE.millimoles;

      case QuantityRatio.milliLitersPerKiloGram:
        return VOLUME.milliliters;

      case QuantityRatio.litersPerKilogram:
        return VOLUME.liters;

      case QuantityRatio.kiloCaloriesPerOunce:
        return ENERGY.kilocalories;

      // case QuantityRatio.gramsPerSquareMeter:
      //   return MASS.grams;

      case QuantityRatio.kiloGramsPerSquareMeter:
        return MASS.kilograms;

      // case QuantityRatio.microGramsPerSquareMeter:
      //   return MASS.micrograms;

      case QuantityRatio.milliGramsPerSquareMeter:
        return MASS.milligrams;

      // case QuantityRatio.nanoGramsPerSquareMeter:
      //   return MASS.nanograms;

      case QuantityRatio.milliGramsPerDeciLiter:
        return MASS.milligrams;

      case QuantityRatio.gramsPerDeciLiter:
        return MASS.grams;

      case QuantityRatio.nanoGramsPerLiter:
        return MASS.nanograms;

      case QuantityRatio.picoGramsPerLiter:
        return MASS.picograms;

      case QuantityRatio.microGramsPerLiter:
        return MASS.micrograms;

      case QuantityRatio.milliGramsPerLiter:
        return MASS.milligrams;

      case QuantityRatio.gramsPerLiter:
        return MASS.grams;

      case QuantityRatio.kiloGramsPerLiter:
        return MASS.kilograms;

      case QuantityRatio.milliGramsPerCubicMeter:
        return MASS.milligrams;

      case QuantityRatio.milliGramsPerCubicCentimeter:
        return MASS.milligrams;

      case QuantityRatio.gramsPerCubicCentimeter:
        return MASS.grams;

      case QuantityRatio.kiloGramsPerCubicMeter:
        return MASS.kilograms;

      case QuantityRatio.femtoMolesPerMilliLiter:
        return AMOUNT_OF_SUBSTANCE.femtomoles;

      case QuantityRatio.picoMolesPerMilliLiter:
        return AMOUNT_OF_SUBSTANCE.picomoles;

      case QuantityRatio.nanoMolesPerMilliLiter:
        return AMOUNT_OF_SUBSTANCE.nanomoles;

      case QuantityRatio.microMolesPerMilliLiter:
        return AMOUNT_OF_SUBSTANCE.micromoles;

      case QuantityRatio.molesPerMilliLiter:
        return AMOUNT_OF_SUBSTANCE.moles;

      case QuantityRatio.picoMolesPerDeciLiter:
        return AMOUNT_OF_SUBSTANCE.picomoles;

      case QuantityRatio.nanoMolesPerDeciLiter:
        return AMOUNT_OF_SUBSTANCE.nanomoles;

      case QuantityRatio.microMolesPerDeciLiter:
        return AMOUNT_OF_SUBSTANCE.micromoles;

      case QuantityRatio.milliMolesPerDeciLiter:
        return AMOUNT_OF_SUBSTANCE.millimoles;

      case QuantityRatio.milliMolesPerLiter:
        return AMOUNT_OF_SUBSTANCE.millimoles;

      case QuantityRatio.picoMolesPerLiter:
        return AMOUNT_OF_SUBSTANCE.picomoles;

      case QuantityRatio.nanoMolesPerLiter:
        return AMOUNT_OF_SUBSTANCE.nanomoles;

      case QuantityRatio.microMolesPerLiter:
        return AMOUNT_OF_SUBSTANCE.micromoles;

      case QuantityRatio.molesPerLiter:
        return AMOUNT_OF_SUBSTANCE.moles;

      case QuantityRatio.molesPerCubicMeter:
        return AMOUNT_OF_SUBSTANCE.moles;

      case QuantityRatio.gramsPerMilliLiter:
        return MASS.grams;

      case QuantityRatio.nanoGramsPerMilliLiter:
        return MASS.nanograms;

      case QuantityRatio.picoGramsPerMilliLiter:
        return MASS.picograms;

      case QuantityRatio.microGramsPerDeciLiter:
        return MASS.micrograms;

      case QuantityRatio.microGramsPerMilliLiter:
        return MASS.micrograms;

      case QuantityRatio.milliGramsPerMilliliter:
        return MASS.milligrams;
    }
  }

  dynamic denominatorUnit() {
    switch (this) {
      case QuantityRatio.nanoMolesPerMole:
        return AMOUNT_OF_SUBSTANCE.moles;

      case QuantityRatio.microMolesPerMole:
        return AMOUNT_OF_SUBSTANCE.moles;

      case QuantityRatio.milliMolesPerMole:
        return AMOUNT_OF_SUBSTANCE.moles;

      case QuantityRatio.microGramsPerNanoGram:
        return MASS.grams;

      case QuantityRatio.nanoGramsPerMilliGram:
        return MASS.milligrams;

      case QuantityRatio.microGramsPerMilliGram:
        return MASS.milligrams;

      case QuantityRatio.milliGramsPerMilliGram:
        return MASS.milligrams;

      case QuantityRatio.nanoGramsPerGram:
        return MASS.grams;

      case QuantityRatio.microGramsPerGram:
        return MASS.grams;

      case QuantityRatio.milliGramsPerGram:
        return MASS.grams;

      case QuantityRatio.gramsPerGram:
        return MASS.grams;

      case QuantityRatio.nanoGramsPerKiloGram:
        return MASS.kilograms;

      case QuantityRatio.microGramsPerKiloGram:
        return MASS.kilograms;

      case QuantityRatio.milliGramsPerKiloGram:
        return MASS.kilograms;

      case QuantityRatio.gramsPerKiloGram:
        return MASS.kilograms;

      case QuantityRatio.picoMolesPerMicroMole:
        return AMOUNT_OF_SUBSTANCE.micromoles;

      case QuantityRatio.nanoMolesPerMilliMole:
        return AMOUNT_OF_SUBSTANCE.millimoles;

      case QuantityRatio.milliLitersPerDeciLiter:
        return VOLUME.deciliters;

      case QuantityRatio.picoGramsPerMilliMeter:
        return LENGTH.millimeters;

      // case QuantityRatio.milliMolesPerSquareMeter:
      //   return AREA.squareMeters;

      case QuantityRatio.femtoMolesPerMilliGram:
        return MASS.milligrams;

      case QuantityRatio.nanoMolesPerMilliGram:
        return MASS.milligrams;

      case QuantityRatio.microMolesPerMilliGram:
        return MASS.milligrams;

      case QuantityRatio.molesPerKiloGram:
        return MASS.kilograms;

      case QuantityRatio.femtoMolesPerGram:
        return MASS.grams;

      case QuantityRatio.nanoMolesPerGram:
        return MASS.nanograms;

      case QuantityRatio.microMolesPerGram:
        return MASS.grams;

      case QuantityRatio.milliMolesPerGram:
        return MASS.grams;

      case QuantityRatio.milliMolesPerKiloGram:
        return MASS.kilograms;

      case QuantityRatio.milliLitersPerKiloGram:
        return MASS.kilograms;

      case QuantityRatio.litersPerKilogram:
        return MASS.kilograms;

      case QuantityRatio.kiloCaloriesPerOunce:
        return MASS.ounces;

      // case QuantityRatio.gramsPerSquareMeter:
      //   return AREA.squareMeters;

      case QuantityRatio.kiloGramsPerSquareMeter:
        return AREA.squareMeters;

      // case QuantityRatio.microGramsPerSquareMeter:
      //   return AREA.squareMeters;

      case QuantityRatio.milliGramsPerSquareMeter:
        return AREA.squareMeters;

      // case QuantityRatio.nanoGramsPerSquareMeter:
      //   return AREA.squareMeters;

      case QuantityRatio.milliGramsPerDeciLiter:
        return VOLUME.deciliters;

      case QuantityRatio.gramsPerDeciLiter:
        return VOLUME.deciliters;

      case QuantityRatio.nanoGramsPerLiter:
        return VOLUME.liters;

      case QuantityRatio.picoGramsPerLiter:
        return VOLUME.liters;

      case QuantityRatio.microGramsPerLiter:
        return VOLUME.liters;

      case QuantityRatio.milliGramsPerLiter:
        return VOLUME.liters;

      case QuantityRatio.gramsPerLiter:
        return VOLUME.liters;

      case QuantityRatio.kiloGramsPerLiter:
        return VOLUME.liters;

      case QuantityRatio.milliGramsPerCubicMeter:
        return VOLUME.cubicMeters;

      case QuantityRatio.milliGramsPerCubicCentimeter:
        return VOLUME.cubicCentimeters;

      case QuantityRatio.gramsPerCubicCentimeter:
        return VOLUME.cubicCentimeters;

      case QuantityRatio.kiloGramsPerCubicMeter:
        return VOLUME.cubicMeters;

      case QuantityRatio.femtoMolesPerMilliLiter:
        return VOLUME.microliters;

      case QuantityRatio.picoMolesPerMilliLiter:
        return VOLUME.milliliters;

      case QuantityRatio.nanoMolesPerMilliLiter:
        return VOLUME.milliliters;

      case QuantityRatio.microMolesPerMilliLiter:
        return VOLUME.milliliters;

      case QuantityRatio.molesPerMilliLiter:
        return VOLUME.milliliters;

      case QuantityRatio.picoMolesPerDeciLiter:
        return VOLUME.deciliters;

      case QuantityRatio.nanoMolesPerDeciLiter:
        return VOLUME.deciliters;

      case QuantityRatio.microMolesPerDeciLiter:
        return VOLUME.deciliters;

      case QuantityRatio.milliMolesPerDeciLiter:
        return VOLUME.deciliters;

      case QuantityRatio.milliMolesPerLiter:
        return VOLUME.liters;

      case QuantityRatio.picoMolesPerLiter:
        return VOLUME.liters;

      case QuantityRatio.nanoMolesPerLiter:
        return VOLUME.liters;

      case QuantityRatio.microMolesPerLiter:
        return VOLUME.liters;

      case QuantityRatio.molesPerLiter:
        return VOLUME.liters;

      case QuantityRatio.molesPerCubicMeter:
        return VOLUME.cubicMeters;

      case QuantityRatio.gramsPerMilliLiter:
        return VOLUME.milliliters;

      case QuantityRatio.nanoGramsPerMilliLiter:
        return VOLUME.milliliters;

      case QuantityRatio.picoGramsPerMilliLiter:
        return VOLUME.milliliters;

      case QuantityRatio.microGramsPerDeciLiter:
        return VOLUME.deciliters;

      case QuantityRatio.microGramsPerMilliLiter:
        return VOLUME.milliliters;

      case QuantityRatio.milliGramsPerMilliliter:
        return VOLUME.milliliters;
    }
  }
}

extension QuantityRatioConversions on num {
  Property? _type(dynamic checkType) {
    switch (checkType.runtimeType) {
      case ANGLE:
        return Angle();
      case AREA:
        return Area();
      case DIGITAL_DATA:
        return DigitalData();
      case ENERGY:
        return Energy();
      case FORCE:
        return Force();
      case FUEL_CONSUMPTION:
        return FuelConsumption();
      case LENGTH:
        return Length();
      case MASS:
        return Mass();
      case POWER:
        return Power();
      case PRESSURE:
        return Pressure();
      case SHOE_SIZE:
        return ShoeSize();
      case SI_PREFIXES:
        return SIPrefixes();
      case SPEED:
        return Speed();
      case TEMPERATURE:
        return Temperature();
      case TIME:
        return Time();
      case TORQUE:
        return Torque();
      case VOLUME:
        return Volume();
      default:
        {
          assert(false, "from and to don't have a valid type");
          return null;
        }
    }
  }

  double? convertUnitsAsQuantityRatioFromTo(
    dynamic fromNumerator,
    dynamic fromDenominator,
    dynamic toNumerator,
    dynamic toDenominator,
  ) {
    assert(fromNumerator.runtimeType == toNumerator.runtimeType,
        'fromNumberator and toNumerator must be of the same type, e.g. LENGTH');
    assert(fromDenominator.runtimeType == toDenominator.runtimeType,
        'fromNumberator and toNumerator must be of the same type, e.g. LENGTH');

    /// Get the type of unit for the input ratio numerator
    final numeratorProperty = _type(fromNumerator);

    /// Get the type of unit for the input ratio denominator
    final denominatorProperty = _type(fromDenominator);

    /// Get the conversion ready for the Numerator. The passed numerical value
    /// is included in this just as it is for the above function
    ///
    /// 500 mg/L - starts with converting 500 mg
    numeratorProperty?.convert(fromNumerator, toDouble());

    /// for the Denominator, we include the unit, but assume the value is 1
    ///
    /// 500 mg/L = 500 mg / 1 L
    denominatorProperty?.convert(fromDenominator, 1.0);

    /// if any value is null OR the denominator is 0 (undefined by reality) we
    /// just return 0
    if (numeratorProperty?.getUnit(toNumerator).value == null ||
        denominatorProperty?.getUnit(toDenominator).value == null ||
        denominatorProperty?.getUnit(toDenominator).value == 0) {
      return 0;
    } else {
      /// Otherwise we convert the top value and divide by the bottom value
      ///
      /// 500 mg / L => mg / mL
      /// 500 mg = 500 mg
      /// 1 L = 1000 mL
      /// 500 / 1000 = 0.5
      return numeratorProperty!.getUnit(toNumerator).value! /
          denominatorProperty!.getUnit(toDenominator).value!;
    }
  }

  double? convertQuantityRatioFromTo(QuantityRatio from, QuantityRatio to) =>
      convertUnitsAsQuantityRatioFromTo(
        from.numeratorUnit(),
        from.denominatorUnit(),
        to.numeratorUnit(),
        to.denominatorUnit(),
      );
}

extension ConvertUnitString on String {
  String? convertFromTo(NUMERAL_SYSTEMS from, NUMERAL_SYSTEMS to) {
    final Property property = NumeralSystems()..convert(from, this);
    return property.getUnit(to).stringValue;
  }
}
