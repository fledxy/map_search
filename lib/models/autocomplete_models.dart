class AutoComplete {
    final List<Item> items;

    AutoComplete({
        required this.items,
    });

    AutoComplete copyWith({
        List<Item>? items,
    }) => 
        AutoComplete(
            items: items ?? this.items,
        );
}

class Item {
    final String title;
    final String id;
    final String language;
    final String politicalView;
    final String resultType;
    final String houseNumberType;
    final bool estimatedPointAddress;
    final String localityType;
    final String administrativeAreaType;
    final ItemAddress address;
    final int distance;
    final Highlights highlights;
    final List<StreetInfo> streetInfo;

    Item({
        required this.title,
        required this.id,
        required this.language,
        required this.politicalView,
        required this.resultType,
        required this.houseNumberType,
        required this.estimatedPointAddress,
        required this.localityType,
        required this.administrativeAreaType,
        required this.address,
        required this.distance,
        required this.highlights,
        required this.streetInfo,
    });

    Item copyWith({
        String? title,
        String? id,
        String? language,
        String? politicalView,
        String? resultType,
        String? houseNumberType,
        bool? estimatedPointAddress,
        String? localityType,
        String? administrativeAreaType,
        ItemAddress? address,
        int? distance,
        Highlights? highlights,
        List<StreetInfo>? streetInfo,
    }) => 
        Item(
            title: title ?? this.title,
            id: id ?? this.id,
            language: language ?? this.language,
            politicalView: politicalView ?? this.politicalView,
            resultType: resultType ?? this.resultType,
            houseNumberType: houseNumberType ?? this.houseNumberType,
            estimatedPointAddress: estimatedPointAddress ?? this.estimatedPointAddress,
            localityType: localityType ?? this.localityType,
            administrativeAreaType: administrativeAreaType ?? this.administrativeAreaType,
            address: address ?? this.address,
            distance: distance ?? this.distance,
            highlights: highlights ?? this.highlights,
            streetInfo: streetInfo ?? this.streetInfo,
        );
}

class ItemAddress {
    final String label;
    final String countryCode;
    final String countryName;
    final String stateCode;
    final String state;
    final String countyCode;
    final String county;
    final String city;
    final String district;
    final String subdistrict;
    final String street;
    final List<String> streets;
    final String block;
    final String subblock;
    final String postalCode;
    final String houseNumber;
    final String building;
    final String unit;

    ItemAddress({
        required this.label,
        required this.countryCode,
        required this.countryName,
        required this.stateCode,
        required this.state,
        required this.countyCode,
        required this.county,
        required this.city,
        required this.district,
        required this.subdistrict,
        required this.street,
        required this.streets,
        required this.block,
        required this.subblock,
        required this.postalCode,
        required this.houseNumber,
        required this.building,
        required this.unit,
    });

    ItemAddress copyWith({
        String? label,
        String? countryCode,
        String? countryName,
        String? stateCode,
        String? state,
        String? countyCode,
        String? county,
        String? city,
        String? district,
        String? subdistrict,
        String? street,
        List<String>? streets,
        String? block,
        String? subblock,
        String? postalCode,
        String? houseNumber,
        String? building,
        String? unit,
    }) => 
        ItemAddress(
            label: label ?? this.label,
            countryCode: countryCode ?? this.countryCode,
            countryName: countryName ?? this.countryName,
            stateCode: stateCode ?? this.stateCode,
            state: state ?? this.state,
            countyCode: countyCode ?? this.countyCode,
            county: county ?? this.county,
            city: city ?? this.city,
            district: district ?? this.district,
            subdistrict: subdistrict ?? this.subdistrict,
            street: street ?? this.street,
            streets: streets ?? this.streets,
            block: block ?? this.block,
            subblock: subblock ?? this.subblock,
            postalCode: postalCode ?? this.postalCode,
            houseNumber: houseNumber ?? this.houseNumber,
            building: building ?? this.building,
            unit: unit ?? this.unit,
        );
}

class Highlights {
    final List<Title> title;
    final HighlightsAddress address;

    Highlights({
        required this.title,
        required this.address,
    });

    Highlights copyWith({
        List<Title>? title,
        HighlightsAddress? address,
    }) => 
        Highlights(
            title: title ?? this.title,
            address: address ?? this.address,
        );
}

class HighlightsAddress {
    final List<Title> label;
    final List<Title> country;
    final List<Title> countryCode;
    final List<Title> state;
    final List<Title> stateCode;
    final List<Title> county;
    final List<Title> countyCode;
    final List<Title> city;
    final List<Title> district;
    final List<Title> subdistrict;
    final List<Title> block;
    final List<Title> subblock;
    final List<Title> street;
    final List<List<Title>> streets;
    final List<Title> postalCode;
    final List<Title> houseNumber;
    final List<Title> building;

    HighlightsAddress({
        required this.label,
        required this.country,
        required this.countryCode,
        required this.state,
        required this.stateCode,
        required this.county,
        required this.countyCode,
        required this.city,
        required this.district,
        required this.subdistrict,
        required this.block,
        required this.subblock,
        required this.street,
        required this.streets,
        required this.postalCode,
        required this.houseNumber,
        required this.building,
    });

    HighlightsAddress copyWith({
        List<Title>? label,
        List<Title>? country,
        List<Title>? countryCode,
        List<Title>? state,
        List<Title>? stateCode,
        List<Title>? county,
        List<Title>? countyCode,
        List<Title>? city,
        List<Title>? district,
        List<Title>? subdistrict,
        List<Title>? block,
        List<Title>? subblock,
        List<Title>? street,
        List<List<Title>>? streets,
        List<Title>? postalCode,
        List<Title>? houseNumber,
        List<Title>? building,
    }) => 
        HighlightsAddress(
            label: label ?? this.label,
            country: country ?? this.country,
            countryCode: countryCode ?? this.countryCode,
            state: state ?? this.state,
            stateCode: stateCode ?? this.stateCode,
            county: county ?? this.county,
            countyCode: countyCode ?? this.countyCode,
            city: city ?? this.city,
            district: district ?? this.district,
            subdistrict: subdistrict ?? this.subdistrict,
            block: block ?? this.block,
            subblock: subblock ?? this.subblock,
            street: street ?? this.street,
            streets: streets ?? this.streets,
            postalCode: postalCode ?? this.postalCode,
            houseNumber: houseNumber ?? this.houseNumber,
            building: building ?? this.building,
        );
}

class Title {
    final int start;
    final int end;

    Title({
        required this.start,
        required this.end,
    });

    Title copyWith({
        int? start,
        int? end,
    }) => 
        Title(
            start: start ?? this.start,
            end: end ?? this.end,
        );
}

class StreetInfo {
    final String baseName;
    final String streetType;
    final bool streetTypePrecedes;
    final bool streetTypeAttached;
    final String prefix;
    final String suffix;
    final String direction;
    final String language;

    StreetInfo({
        required this.baseName,
        required this.streetType,
        required this.streetTypePrecedes,
        required this.streetTypeAttached,
        required this.prefix,
        required this.suffix,
        required this.direction,
        required this.language,
    });

    StreetInfo copyWith({
        String? baseName,
        String? streetType,
        bool? streetTypePrecedes,
        bool? streetTypeAttached,
        String? prefix,
        String? suffix,
        String? direction,
        String? language,
    }) => 
        StreetInfo(
            baseName: baseName ?? this.baseName,
            streetType: streetType ?? this.streetType,
            streetTypePrecedes: streetTypePrecedes ?? this.streetTypePrecedes,
            streetTypeAttached: streetTypeAttached ?? this.streetTypeAttached,
            prefix: prefix ?? this.prefix,
            suffix: suffix ?? this.suffix,
            direction: direction ?? this.direction,
            language: language ?? this.language,
        );
}
