.class Lmf/org/apache/xerces/impl/dv/xs/DayTimeDurationDV;
.super Lmf/org/apache/xerces/impl/dv/xs/DurationDV;
.source "DayTimeDurationDV.java"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;-><init>()V

    return-void
.end method


# virtual methods
.method public getActualValue(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
        }
    .end annotation

    const/4 p2, 0x2

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lmf/org/apache/xerces/impl/dv/xs/DayTimeDurationDV;->parse(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    new-instance v0, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, p2, v1

    const/4 p1, 0x1

    const-string v1, "dayTimeDuration"

    aput-object v1, p2, p1

    const-string p1, "cvc-datatype-valid.1.2.1"

    invoke-direct {v0, p1, p2}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method protected getDuration(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)Lmf/javax/xml/datatype/Duration;
    .locals 14

    iget v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->day:I

    const/4 v1, 0x1

    if-ltz v0, :cond_1

    iget v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->hour:I

    if-ltz v0, :cond_1

    iget v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->minute:I

    if-ltz v0, :cond_1

    iget-wide v2, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->second:D

    const-wide/16 v4, 0x0

    cmpg-double v0, v2, v4

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, -0x1

    :goto_1
    sget-object v2, Lmf/org/apache/xerces/impl/dv/xs/DayTimeDurationDV;->datatypeFactory:Lmf/javax/xml/datatype/DatatypeFactory;

    if-ne v0, v1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    move v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v1, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->day:I

    const/high16 v6, -0x80000000

    const/4 v7, 0x0

    if-eq v1, v6, :cond_3

    iget v1, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->day:I

    mul-int/2addr v1, v0

    int-to-long v8, v1

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    goto :goto_3

    :cond_3
    move-object v1, v7

    :goto_3
    iget v8, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->hour:I

    if-eq v8, v6, :cond_4

    iget v8, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->hour:I

    mul-int/2addr v8, v0

    int-to-long v8, v8

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v8

    goto :goto_4

    :cond_4
    move-object v8, v7

    :goto_4
    iget v9, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->minute:I

    if-eq v9, v6, :cond_5

    iget v6, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->minute:I

    mul-int/2addr v6, v0

    int-to-long v9, v6

    invoke-static {v9, v10}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    move-object v9, v6

    goto :goto_5

    :cond_5
    move-object v9, v7

    :goto_5
    iget-wide v10, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->second:D

    const-wide/high16 v12, -0x3e20000000000000L    # -2.147483648E9

    cmpl-double v6, v10, v12

    if-eqz v6, :cond_6

    new-instance v6, Ljava/math/BigDecimal;

    int-to-double v10, v0

    iget-wide v12, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->second:D

    mul-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v6, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    move-object p1, v6

    goto :goto_6

    :cond_6
    move-object p1, v7

    :goto_6
    move-object v6, v1

    move-object v7, v8

    move-object v8, v9

    move-object v9, p1

    invoke-virtual/range {v2 .. v9}, Lmf/javax/xml/datatype/DatatypeFactory;->newDuration(ZLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigDecimal;)Lmf/javax/xml/datatype/Duration;

    move-result-object p1

    return-object p1
.end method
