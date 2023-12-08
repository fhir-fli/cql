// Package imports:
import 'package:units_converter/units_converter.dart';

// Project imports:
import 'quantity_ratio.dart';

const stringUnitToProperty = <String, Enum>{
  ///
  /// LENGTH
  ///
  'm': LENGTH.meters,
  'cm': LENGTH.centimeters,
  '[in_br]': LENGTH.inches,
  '[in_i]': LENGTH.inches,
  '[in_us]': LENGTH.inches,
  '[ft_i]': LENGTH.feet,
  '[ft_br]': LENGTH.feet,
  '[ft_us]': LENGTH.feetUs,
  '[mil_i]': LENGTH.mils,
  '[mil_us]': LENGTH.mils,
  '[mi_br]': LENGTH.miles,
  '[mi_i]': LENGTH.miles,
  '[mi_us]': LENGTH.miles,
  '[nmi_br]': LENGTH.nauticalMiles,
  '[nmi_i]': LENGTH.nauticalMiles,
  '[yd_br]': LENGTH.yards,
  '[yd_i]': LENGTH.yards,
  '[yd_us]': LENGTH.yards,
  'mm': LENGTH.millimeters,
  'um': LENGTH.micrometers,
  'nm': LENGTH.nanometers,
  'Ao': LENGTH.angstroms,
  'pm': LENGTH.picometers,
  'km': LENGTH.kilometers,
  'AU': LENGTH.astronomicalUnits,
  '[ly]': LENGTH.lightYears,
  'pc': LENGTH.parsec,

  ///
  /// AREA
  ///
  'm2': AREA.squareMeters,
  'cm2': AREA.squareCentimeters,
  '[sin_i]': AREA.squareInches,
  '[sft_i]': AREA.squareFeet,
  // '[sft_i]': AREA.squareFeetUs,
  'mm2': AREA.squareMillimeters,
// AREA.hectares,
  'km2': AREA.squareKilometers,
  '[syd_i]': AREA.squareYard,
  '[smi_us]': AREA.squareMiles,
  '[acr_us]': AREA.acres,
  'ar': AREA.are,

  ///
  /// ENERGY
  ///
  'J': ENERGY.joules,
  'cal': ENERGY.calories,
  'kcal': ENERGY.kilocalories,
  // ENERGY.kilowattHours,
  'eV': ENERGY.electronvolts,
  // ENERGY.energyFootPound,
// FORCE.newton,
// FORCE.dyne,
// FORCE.poundForce,
// FORCE.kilogramForce,
// FORCE.poundal,

  ///
  ///MASS
  ///
  'g': MASS.grams,
  'kg': MASS.kilograms,
  '[lb_av]': MASS.pounds,
  '[oz_av]': MASS.ounces,

  /// note this is a metric ton
  't': MASS.tons,
  'cg': MASS.centigrams,
  'mg': MASS.milligrams,
// MASS.uma,
// MASS.carats,
// MASS.pennyweights,
  '[oz_tr]': MASS.troyOunces,

  ///
  /// POWER
  ///
// POWER.watt,
// POWER.milliwatt,
// POWER.kilowatt,
// POWER.megawatt,
// POWER.gigawatt,
// POWER.europeanHorsePower,
// POWER.imperialHorsePower,

  ///
  /// PRESSURE
  ///
// PRESSURE.pascal,
// PRESSURE.bar,
// PRESSURE.millibar,
// PRESSURE.atmosphere,
// PRESSURE.psi,
// PRESSURE.torr,
// PRESSURE.inchOfMercury,
// PRESSURE.hectoPascal,

  ///
  /// SPEED
  ///
// SPEED.metersPerSecond,
// SPEED.kilometersPerHour,
// SPEED.milesPerHour,
// SPEED.knots,
// SPEED.minutesPerKilometer,
// SPEED.feetsPerSecond,

  ///
  ///TEMPERATURE
  ///
  '[degF]': TEMPERATURE.fahrenheit,
  'Cel': TEMPERATURE.celsius,
  'K': TEMPERATURE.kelvin,
// TEMPERATURE.reamur,
// TEMPERATURE.romer,
// TEMPERATURE.delisle,
// TEMPERATURE.rankine,

  ///
  ///TIME
  ///
  's': TIME.seconds,
  'ds': TIME.deciseconds,
  'cs': TIME.centiseconds,
  'ms': TIME.milliseconds,
  'us': TIME.microseconds,
  'ns': TIME.nanoseconds,
  'min': TIME.minutes,
  'h': TIME.hours,
  'd': TIME.days,
  'wk': TIME.weeks,
  'y': TIME.years365,
  'µs': TIME.microseconds,
  'a': TIME.years365,
  'c.': TIME.centuries,
// TIME.lustrum,
// TIME.decades,
// TIME.centuries,
// TIME.millennium,
  'milliseconds': TIME.milliseconds,
  'millisecond': TIME.milliseconds,
  'seconds': TIME.seconds,
  'second': TIME.seconds,
  'minutes': TIME.minutes,
  'minute': TIME.minutes,
  'hours': TIME.hours,
  'hour': TIME.hours,
  'days': TIME.days,
  'day': TIME.days,
  'weeks': TIME.weeks,
  'week': TIME.weeks,
// 'months':TIME.months,
// 'month':TIME.months
  'years': TIME.years365,
  'year': TIME.years365,

  ///
  /// TORQUE
  ///
// TORQUE.newtonMeter,
// TORQUE.dyneMeter,
// TORQUE.poundForceFeet,
// TORQUE.kilogramForceMeter,
// TORQUE.poundalMeter,

  ///
  /// VOLUME
  ///
  'm3': VOLUME.cubicMeters,
  'L': VOLUME.liters,
// VOLUME.imperialGallons,
  '[gal_us]': VOLUME.usGallons,
// VOLUME.imperialPints,
// VOLUME.imperialFluidOunces,
// VOLUME.imperialGill,
  '[pt_us]': VOLUME.usPints,
  '[foz_us]': VOLUME.usFluidOunces,
// VOLUME.usGill,
  'mL': VOLUME.milliliters,
// VOLUME.tablespoonsUs,
// VOLUME.australianTablespoons,
  '[cup_us]': VOLUME.cups,
  'cm3': VOLUME.cubicCentimeters,
  '[cin_i]': VOLUME.cubicInches,
// VOLUME.cubicFeet,
  'mm3': VOLUME.cubicMillimeters,

  ///
  /// Substance Ratio or Substance Fraction Units
  ///
  'pmol/umol': QuantityRatio.picoMolesPerMicroMole,
  'nmol/mmol': QuantityRatio.nanoMolesPerMilliMole,
  'nmol/mol': QuantityRatio.nanoMolesPerMole,
  'umol/mol': QuantityRatio.microMolesPerMole,
  'mmol/mol': QuantityRatio.milliMolesPerMole,

  ///
  /// Substance Content Units
  ///
  'fmol/mg': QuantityRatio.femtoMolesPerMilliGram,
  'nmol/mg': QuantityRatio.nanoMolesPerMilliGram,
  'umol/mg': QuantityRatio.microMolesPerMilliGram,
  'mol/kg': QuantityRatio.molesPerKiloGram,
  'fmol/g': QuantityRatio.femtoMolesPerGram,
  'nmol/g': QuantityRatio.nanoMolesPerGram,
  'umol/g': QuantityRatio.microMolesPerGram,
  'mmol/g': QuantityRatio.milliMolesPerGram,
  'mmol/kg': QuantityRatio.milliMolesPerKiloGram,

  ///
  /// Mass QuantityRatio Or Mass Fraction Or Mass Content Units
  ///
  'ug/ng': QuantityRatio.microGramsPerNanoGram,
  'ng/mg': QuantityRatio.nanoGramsPerMilliGram,
  'ug/mg': QuantityRatio.microGramsPerMilliGram,
  'mg/mg': QuantityRatio.milliGramsPerMilliGram,
  'ng/g': QuantityRatio.nanoGramsPerGram,
  'ug/g': QuantityRatio.microGramsPerGram,
  'mg/g': QuantityRatio.milliGramsPerGram,
  'g/g': QuantityRatio.gramsPerGram,
  'ng/kg': QuantityRatio.nanoGramsPerKiloGram,
  'ug/kg': QuantityRatio.microGramsPerKiloGram,
  'mg/kg': QuantityRatio.milliGramsPerKiloGram,
  'g/kg': QuantityRatio.gramsPerKiloGram,

  ///
  /// Volume Fraction Units
  ///
  'mL/dL': QuantityRatio.milliLitersPerDeciLiter,

  ///
  /// Lineic Mass Units
  ///
  // 'pg/mm': QuantityRatio.picoGramsPerMilliMeter,

  ///
  /// Areic Mass Units
  ///
//   'mmol/m2': QuantityRatio.milliMolesPerSquareMeter,

  ///
  /// Volume Content Units
  ///
//   'mL/kg': QuantityRatio.milliLitersPerKiloGram,
//   'L/kg': QuantityRatio.litersPerKilogram,

  ///
  /// Energy Content Units
  ///
//   'kCal/[oz_av]': QuantityRatio.kiloCaloriesPerOunce,

  ///
  /// Areic Mass Units
  ///
//   'g/m2': QuantityRatio.gramsPerSquareMeter,
//   'kg/m2': QuantityRatio.kiloGramsPerSquareMeter,
//   'ug/m2': QuantityRatio.microGramsPerSquareMeter,
//   'mg/m2': QuantityRatio.milliGramsPerSquareMeter,
//   'ng/m2': QuantityRatio.nanoGramsPerSquareMeter,

  ///
  /// Mass Concentration Units
  ///
  'pg/mL': QuantityRatio.picoGramsPerMilliLiter,
  'ng/mL': QuantityRatio.nanoGramsPerMilliLiter,
  'ug/mL': QuantityRatio.microGramsPerMilliLiter,
  'mg/mL': QuantityRatio.milliGramsPerMilliliter,
  'g/mL': QuantityRatio.gramsPerMilliLiter,
  'ug/dL': QuantityRatio.microGramsPerDeciLiter,
  'mg/dL': QuantityRatio.milliGramsPerDeciLiter,
  'g/dL': QuantityRatio.gramsPerDeciLiter,
  'ng/L': QuantityRatio.nanoGramsPerLiter,
  'pg/L': QuantityRatio.picoGramsPerLiter,
  'ug/L': QuantityRatio.microGramsPerLiter,
  'mg/L': QuantityRatio.milliGramsPerLiter,
  'g/L': QuantityRatio.gramsPerLiter,
  'kg/L': QuantityRatio.kiloGramsPerLiter,
  'mg/m3': QuantityRatio.milliGramsPerCubicMeter,
  'kg/m3': QuantityRatio.kiloGramsPerCubicMeter,

  ///
  /// Substance Concentration Units
  ///
  'fmol/mL': QuantityRatio.femtoMolesPerMilliLiter,
  'pmol/mL': QuantityRatio.picoMolesPerMilliLiter,
  'nmol/mL': QuantityRatio.nanoMolesPerMilliLiter,
  'umol/mL': QuantityRatio.microMolesPerMilliLiter,
  'mol/mL': QuantityRatio.molesPerMilliLiter,
  'pmol/dL': QuantityRatio.picoMolesPerDeciLiter,
  'nmol/dL': QuantityRatio.nanoMolesPerDeciLiter,
  'umol/dL': QuantityRatio.microMolesPerDeciLiter,
  'mmol/dL': QuantityRatio.milliMolesPerDeciLiter,
  'mmol/L': QuantityRatio.milliMolesPerLiter,
  'pmol/L': QuantityRatio.picoMolesPerLiter,
  'nmol/L': QuantityRatio.nanoMolesPerLiter,
  'umol/L': QuantityRatio.microMolesPerLiter,
  'mol/L': QuantityRatio.molesPerLiter,
  'mol/m3': QuantityRatio.molesPerCubicMeter,
};
