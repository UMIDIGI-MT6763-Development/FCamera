.class public Lorg/lasque/tusdk/core/utils/TuSdkDate;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/lasque/tusdk/core/utils/TuSdkDate;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/Calendar;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/utils/TuSdkDate;-><init>(Ljava/util/Calendar;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Calendar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/lasque/tusdk/core/utils/TuSdkDate;->a:Ljava/util/Calendar;

    return-void
.end method

.method public static create()Lorg/lasque/tusdk/core/utils/TuSdkDate;
    .locals 1

    new-instance v0, Lorg/lasque/tusdk/core/utils/TuSdkDate;

    invoke-direct {v0}, Lorg/lasque/tusdk/core/utils/TuSdkDate;-><init>()V

    return-object v0
.end method

.method public static create(J)Lorg/lasque/tusdk/core/utils/TuSdkDate;
    .locals 1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    new-instance p0, Lorg/lasque/tusdk/core/utils/TuSdkDate;

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/utils/TuSdkDate;-><init>(Ljava/util/Calendar;)V

    return-object p0
.end method

.method public static create(Ljava/util/Calendar;)Lorg/lasque/tusdk/core/utils/TuSdkDate;
    .locals 1

    new-instance v0, Lorg/lasque/tusdk/core/utils/TuSdkDate;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/core/utils/TuSdkDate;-><init>(Ljava/util/Calendar;)V

    return-object v0
.end method


# virtual methods
.method public addDay(I)Lorg/lasque/tusdk/core/utils/TuSdkDate;
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/TuSdkDate;->a:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->add(II)V

    new-instance p1, Lorg/lasque/tusdk/core/utils/TuSdkDate;

    invoke-direct {p1, v0}, Lorg/lasque/tusdk/core/utils/TuSdkDate;-><init>(Ljava/util/Calendar;)V

    return-object p1
.end method

.method public addMonth(I)Lorg/lasque/tusdk/core/utils/TuSdkDate;
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/TuSdkDate;->a:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->add(II)V

    new-instance p1, Lorg/lasque/tusdk/core/utils/TuSdkDate;

    invoke-direct {p1, v0}, Lorg/lasque/tusdk/core/utils/TuSdkDate;-><init>(Ljava/util/Calendar;)V

    return-object p1
.end method

.method public associateDayOfTheFollowingMonth()Lorg/lasque/tusdk/core/utils/TuSdkDate;
    .locals 4

    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/TuSdkDate;->year()I

    move-result v1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/TuSdkDate;->month()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/TuSdkDate;->day()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Ljava/util/GregorianCalendar;-><init>(III)V

    new-instance v1, Lorg/lasque/tusdk/core/utils/TuSdkDate;

    invoke-direct {v1, v0}, Lorg/lasque/tusdk/core/utils/TuSdkDate;-><init>(Ljava/util/Calendar;)V

    return-object v1
.end method

.method public associateDayOfThePreviousMonth()Lorg/lasque/tusdk/core/utils/TuSdkDate;
    .locals 4

    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/TuSdkDate;->year()I

    move-result v1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/TuSdkDate;->month()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/TuSdkDate;->day()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Ljava/util/GregorianCalendar;-><init>(III)V

    new-instance v1, Lorg/lasque/tusdk/core/utils/TuSdkDate;

    invoke-direct {v1, v0}, Lorg/lasque/tusdk/core/utils/TuSdkDate;-><init>(Ljava/util/Calendar;)V

    return-object v1
.end method

.method public beginingOfDay()Lorg/lasque/tusdk/core/utils/TuSdkDate;
    .locals 4

    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/TuSdkDate;->year()I

    move-result v1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/TuSdkDate;->month()I

    move-result v2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/TuSdkDate;->day()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Ljava/util/GregorianCalendar;-><init>(III)V

    new-instance v1, Lorg/lasque/tusdk/core/utils/TuSdkDate;

    invoke-direct {v1, v0}, Lorg/lasque/tusdk/core/utils/TuSdkDate;-><init>(Ljava/util/Calendar;)V

    return-object v1
.end method

.method public calendar()Ljava/util/Calendar;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/TuSdkDate;->a:Ljava/util/Calendar;

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lorg/lasque/tusdk/core/utils/TuSdkDate;

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/utils/TuSdkDate;->compareTo(Lorg/lasque/tusdk/core/utils/TuSdkDate;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/lasque/tusdk/core/utils/TuSdkDate;)I
    .locals 4

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/utils/TuSdkDate;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/TuSdkDate;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/utils/TuSdkDate;->getTimeInMillis()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-lez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public day()I
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/TuSdkDate;->a:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public diffOfMillis()J
    .locals 2

    invoke-static {}, Lorg/lasque/tusdk/core/utils/TuSdkDate;->create()Lorg/lasque/tusdk/core/utils/TuSdkDate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/utils/TuSdkDate;->diffOfMillis(Lorg/lasque/tusdk/core/utils/TuSdkDate;)J

    move-result-wide v0

    return-wide v0
.end method

.method public diffOfMillis(J)J
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/TuSdkDate;->getTimeInMillis()J

    move-result-wide v0

    sub-long/2addr p1, v0

    return-wide p1
.end method

.method public diffOfMillis(Lorg/lasque/tusdk/core/utils/TuSdkDate;)J
    .locals 4

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/TuSdkDate;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-virtual {p1}, Lorg/lasque/tusdk/core/utils/TuSdkDate;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/TuSdkDate;->getTimeInMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public diffOfMonth()I
    .locals 1

    invoke-static {}, Lorg/lasque/tusdk/core/utils/TuSdkDate;->create()Lorg/lasque/tusdk/core/utils/TuSdkDate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/utils/TuSdkDate;->diffOfMonth(Lorg/lasque/tusdk/core/utils/TuSdkDate;)I

    move-result v0

    return v0
.end method

.method public diffOfMonth(Lorg/lasque/tusdk/core/utils/TuSdkDate;)I
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1}, Lorg/lasque/tusdk/core/utils/TuSdkDate;->year()I

    move-result v0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/TuSdkDate;->year()I

    move-result v1

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0xc

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/utils/TuSdkDate;->month()I

    move-result p1

    add-int/2addr v0, p1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/TuSdkDate;->month()I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method public endOfDay()Lorg/lasque/tusdk/core/utils/TuSdkDate;
    .locals 4

    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/TuSdkDate;->year()I

    move-result v1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/TuSdkDate;->month()I

    move-result v2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/TuSdkDate;->day()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/GregorianCalendar;-><init>(III)V

    const/16 v1, 0xe

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    new-instance v1, Lorg/lasque/tusdk/core/utils/TuSdkDate;

    invoke-direct {v1, v0}, Lorg/lasque/tusdk/core/utils/TuSdkDate;-><init>(Ljava/util/Calendar;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    instance-of v1, p1, Lorg/lasque/tusdk/core/utils/TuSdkDate;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/TuSdkDate;->getTimeInMillis()J

    move-result-wide v1

    check-cast p1, Lorg/lasque/tusdk/core/utils/TuSdkDate;

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/utils/TuSdkDate;->getTimeInMillis()J

    move-result-wide v3

    cmp-long p1, v1, v3

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public firstDayOfTheFollowingMonth()Lorg/lasque/tusdk/core/utils/TuSdkDate;
    .locals 4

    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/TuSdkDate;->year()I

    move-result v1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/TuSdkDate;->month()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-direct {v0, v1, v2, v3}, Ljava/util/GregorianCalendar;-><init>(III)V

    new-instance v1, Lorg/lasque/tusdk/core/utils/TuSdkDate;

    invoke-direct {v1, v0}, Lorg/lasque/tusdk/core/utils/TuSdkDate;-><init>(Ljava/util/Calendar;)V

    return-object v1
.end method

.method public firstDayOfTheMonth()Lorg/lasque/tusdk/core/utils/TuSdkDate;
    .locals 4

    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/TuSdkDate;->year()I

    move-result v1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/TuSdkDate;->month()I

    move-result v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/GregorianCalendar;-><init>(III)V

    new-instance v1, Lorg/lasque/tusdk/core/utils/TuSdkDate;

    invoke-direct {v1, v0}, Lorg/lasque/tusdk/core/utils/TuSdkDate;-><init>(Ljava/util/Calendar;)V

    return-object v1
.end method

.method public firstDayOfThePreviousMonth()Lorg/lasque/tusdk/core/utils/TuSdkDate;
    .locals 4

    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/TuSdkDate;->year()I

    move-result v1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/TuSdkDate;->month()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-direct {v0, v1, v2, v3}, Ljava/util/GregorianCalendar;-><init>(III)V

    new-instance v1, Lorg/lasque/tusdk/core/utils/TuSdkDate;

    invoke-direct {v1, v0}, Lorg/lasque/tusdk/core/utils/TuSdkDate;-><init>(Ljava/util/Calendar;)V

    return-object v1
.end method

.method public firstDayOfTheWeek()Lorg/lasque/tusdk/core/utils/TuSdkDate;
    .locals 5

    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/TuSdkDate;->year()I

    move-result v1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/TuSdkDate;->month()I

    move-result v2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/TuSdkDate;->day()I

    move-result v3

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/TuSdkDate;->weekday()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/util/GregorianCalendar;-><init>(III)V

    new-instance v1, Lorg/lasque/tusdk/core/utils/TuSdkDate;

    invoke-direct {v1, v0}, Lorg/lasque/tusdk/core/utils/TuSdkDate;-><init>(Ljava/util/Calendar;)V

    return-object v1
.end method

.method public followingDay()Lorg/lasque/tusdk/core/utils/TuSdkDate;
    .locals 4

    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/TuSdkDate;->year()I

    move-result v1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/TuSdkDate;->month()I

    move-result v2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/TuSdkDate;->day()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/GregorianCalendar;-><init>(III)V

    new-instance v1, Lorg/lasque/tusdk/core/utils/TuSdkDate;

    invoke-direct {v1, v0}, Lorg/lasque/tusdk/core/utils/TuSdkDate;-><init>(Ljava/util/Calendar;)V

    return-object v1
.end method

.method public format(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/TuSdkDate;->a:Ljava/util/Calendar;

    invoke-static {v0, p1}, Lorg/lasque/tusdk/core/utils/DateHelper;->format(Ljava/util/Calendar;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTimeInMillis()J
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/TuSdkDate;->a:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTimeInSeconds()I
    .locals 4

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/TuSdkDate;->a:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public hour()I
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/TuSdkDate;->a:Ljava/util/Calendar;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public isInModth()Z
    .locals 1

    invoke-static {}, Lorg/lasque/tusdk/core/utils/TuSdkDate;->create()Lorg/lasque/tusdk/core/utils/TuSdkDate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/utils/TuSdkDate;->sameMonth(Lorg/lasque/tusdk/core/utils/TuSdkDate;)Z

    move-result v0

    return v0
.end method

.method public isToday()Z
    .locals 1

    invoke-static {}, Lorg/lasque/tusdk/core/utils/TuSdkDate;->create()Lorg/lasque/tusdk/core/utils/TuSdkDate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/utils/TuSdkDate;->sameDay(Lorg/lasque/tusdk/core/utils/TuSdkDate;)Z

    move-result v0

    return v0
.end method

.method public lastDayOfTheMonth()Lorg/lasque/tusdk/core/utils/TuSdkDate;
    .locals 4

    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/TuSdkDate;->year()I

    move-result v1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/TuSdkDate;->month()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljava/util/GregorianCalendar;-><init>(III)V

    new-instance v1, Lorg/lasque/tusdk/core/utils/TuSdkDate;

    invoke-direct {v1, v0}, Lorg/lasque/tusdk/core/utils/TuSdkDate;-><init>(Ljava/util/Calendar;)V

    return-object v1
.end method

.method public minute()I
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/TuSdkDate;->a:Ljava/util/Calendar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public month()I
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/TuSdkDate;->a:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public numberOfDaysInMonth()I
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/TuSdkDate;->a:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v0

    return v0
.end method

.method public numberOfWeeksInMonth()I
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/TuSdkDate;->a:Ljava/util/Calendar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v0

    return v0
.end method

.method public previousDay()Lorg/lasque/tusdk/core/utils/TuSdkDate;
    .locals 4

    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/TuSdkDate;->year()I

    move-result v1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/TuSdkDate;->month()I

    move-result v2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/TuSdkDate;->day()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/GregorianCalendar;-><init>(III)V

    new-instance v1, Lorg/lasque/tusdk/core/utils/TuSdkDate;

    invoke-direct {v1, v0}, Lorg/lasque/tusdk/core/utils/TuSdkDate;-><init>(Ljava/util/Calendar;)V

    return-object v1
.end method

.method public sameDay(Lorg/lasque/tusdk/core/utils/TuSdkDate;)Z
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/TuSdkDate;->year()I

    move-result v0

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/utils/TuSdkDate;->year()I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/TuSdkDate;->month()I

    move-result v0

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/utils/TuSdkDate;->month()I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/TuSdkDate;->day()I

    move-result v0

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/utils/TuSdkDate;->day()I

    move-result p1

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public sameMonth(Lorg/lasque/tusdk/core/utils/TuSdkDate;)Z
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/TuSdkDate;->year()I

    move-result v0

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/utils/TuSdkDate;->year()I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/TuSdkDate;->month()I

    move-result v0

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/utils/TuSdkDate;->month()I

    move-result p1

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public sameWeek(Lorg/lasque/tusdk/core/utils/TuSdkDate;)Z
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/TuSdkDate;->year()I

    move-result v0

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/utils/TuSdkDate;->year()I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/TuSdkDate;->week()I

    move-result v0

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/utils/TuSdkDate;->week()I

    move-result p1

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public second()I
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/TuSdkDate;->a:Ljava/util/Calendar;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public test()V
    .locals 5

    const-string v0, "now: %s"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/TuSdkDate;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lorg/lasque/tusdk/core/utils/TLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "beginingOfDay(\u83b7\u53d6\u5f53\u5929\u7684\u8d77\u59cb\u65f6\u95f4): %s"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/TuSdkDate;->beginingOfDay()Lorg/lasque/tusdk/core/utils/TuSdkDate;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lorg/lasque/tusdk/core/utils/TLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "endOfDay(\u83b7\u53d6\u5f53\u5929\u7684\u7ed3\u675f\u65f6\u95f4): %s"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/TuSdkDate;->endOfDay()Lorg/lasque/tusdk/core/utils/TuSdkDate;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lorg/lasque/tusdk/core/utils/TLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "firstDayOfTheMonth(\u83b7\u53d6\u5f53\u6708\u7684\u7b2c\u4e00\u5929): %s"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/TuSdkDate;->firstDayOfTheMonth()Lorg/lasque/tusdk/core/utils/TuSdkDate;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lorg/lasque/tusdk/core/utils/TLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "lastDayOfTheMonth(\u83b7\u53d6\u5f53\u6708\u7684\u6700\u540e\u4e00\u5929): %s"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/TuSdkDate;->lastDayOfTheMonth()Lorg/lasque/tusdk/core/utils/TuSdkDate;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lorg/lasque/tusdk/core/utils/TLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "firstDayOfThePreviousMonth(\u83b7\u53d6\u524d\u4e00\u4e2a\u6708\u7684\u7b2c\u4e00\u5929): %s"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/TuSdkDate;->firstDayOfThePreviousMonth()Lorg/lasque/tusdk/core/utils/TuSdkDate;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lorg/lasque/tusdk/core/utils/TLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "firstDayOfTheFollowingMonth(\u83b7\u53d6\u540e\u4e00\u4e2a\u6708\u7684\u7b2c\u4e00\u5929): %s"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/TuSdkDate;->firstDayOfTheFollowingMonth()Lorg/lasque/tusdk/core/utils/TuSdkDate;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lorg/lasque/tusdk/core/utils/TLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "associateDayOfThePreviousMonth(\u83b7\u53d6\u524d\u4e00\u4e2a\u6708\u4e2d\u4e0e\u5f53\u5929\u5bf9\u5e94\u7684\u65e5\u671f): %s"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/TuSdkDate;->associateDayOfThePreviousMonth()Lorg/lasque/tusdk/core/utils/TuSdkDate;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lorg/lasque/tusdk/core/utils/TLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "associateDayOfTheFollowingMonth(\u83b7\u53d6\u540e\u4e00\u4e2a\u6708\u4e2d\u4e0e\u5f53\u5929\u5bf9\u5e94\u7684\u65e5\u671f): %s"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/TuSdkDate;->associateDayOfTheFollowingMonth()Lorg/lasque/tusdk/core/utils/TuSdkDate;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lorg/lasque/tusdk/core/utils/TLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "numberOfDaysInMonth(\u83b7\u53d6\u5f53\u6708\u7684\u5929\u6570): %s"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/TuSdkDate;->numberOfDaysInMonth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lorg/lasque/tusdk/core/utils/TLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "numberOfWeeksInMonth(\u83b7\u53d6\u5f53\u6708\u7684\u5468\u6570): %s"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/TuSdkDate;->numberOfWeeksInMonth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lorg/lasque/tusdk/core/utils/TLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "firstDayOfTheWeek(\u83b7\u53d6\u8fd9\u4e00\u5468\u7684\u7b2c\u4e00\u5929): %s"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/TuSdkDate;->firstDayOfTheWeek()Lorg/lasque/tusdk/core/utils/TuSdkDate;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lorg/lasque/tusdk/core/utils/TLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "weekOfDayInMonth(\u83b7\u53d6\u5f53\u5929\u662f\u5f53\u6708\u7684\u7b2c\u51e0\u5468): %s"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/TuSdkDate;->weekOfDayInMonth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lorg/lasque/tusdk/core/utils/TLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "previousDay(\u524d\u4e00\u5929): %s"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/TuSdkDate;->previousDay()Lorg/lasque/tusdk/core/utils/TuSdkDate;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lorg/lasque/tusdk/core/utils/TLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "followingDay(\u540e\u4e00\u5929): %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/TuSdkDate;->followingDay()Lorg/lasque/tusdk/core/utils/TuSdkDate;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/TLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/TuSdkDate;->a:Ljava/util/Calendar;

    const-string v1, "yyyy-M-d HH:mm:ss:SSS"

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/DateHelper;->format(Ljava/util/Calendar;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public week()I
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/TuSdkDate;->a:Ljava/util/Calendar;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public weekOfDayInMonth()I
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/TuSdkDate;->a:Ljava/util/Calendar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public weekday()I
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/TuSdkDate;->a:Ljava/util/Calendar;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public year()I
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/TuSdkDate;->a:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method
