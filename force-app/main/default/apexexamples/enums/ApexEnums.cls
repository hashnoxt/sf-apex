public with sharing class ApexEnums {
    public enum Season {WINTER, SPRING, SUMMER, FALL}

    Season southernHemisphereSeason = Season.WINTER;
    Season defaultSeason = Season.SPRING;

    public Season getSouthernHemisphereSeason(Season northernHemisphereSeason) {

        if (northernHemisphereSeason == Season.SUMMER) {
            System.debug(southernHemisphereSeason);
            return southernHemisphereSeason;
        } else {
            System.debug(defaultSeason);
            return Season.FALL;
        }
    }
}