.class public Lorg/lasque/tusdk/impl/TuDateHelper;
.super Lorg/lasque/tusdk/core/utils/DateHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/DateHelper;-><init>()V

    return-void
.end method

.method public static timestampSNS(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 3

    const-string v0, "lsq_date_seconds_ago"

    invoke-static {v0}, Lorg/lasque/tusdk/core/TuSdkContext;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "lsq_date_minutes_ago"

    invoke-static {v1}, Lorg/lasque/tusdk/core/TuSdkContext;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "lsq_date_hours_ago"

    invoke-static {v2}, Lorg/lasque/tusdk/core/TuSdkContext;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lorg/lasque/tusdk/impl/TuDateHelper;->timestampSNS(Ljava/util/Calendar;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
