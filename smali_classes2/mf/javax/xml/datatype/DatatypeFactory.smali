.class public abstract Lmf/javax/xml/datatype/DatatypeFactory;
.super Ljava/lang/Object;
.source "DatatypeFactory.java"


# static fields
.field public static final DATATYPEFACTORY_IMPLEMENTATION_CLASS:Ljava/lang/String;

.field public static final DATATYPEFACTORY_PROPERTY:Ljava/lang/String; = "javax.xml.datatype.DatatypeFactory"

.field private static final XDTSCHEMA_DTD:Ljava/util/regex/Pattern;

.field private static final XDTSCHEMA_YMD:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/String;

    const-string v1, "com.sun.org.apache.xerces.internal.jaxp.datatype.DatatypeFactoryImpl"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmf/javax/xml/datatype/DatatypeFactory;->DATATYPEFACTORY_IMPLEMENTATION_CLASS:Ljava/lang/String;

    const-string v0, "[^DT]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lmf/javax/xml/datatype/DatatypeFactory;->XDTSCHEMA_YMD:Ljava/util/regex/Pattern;

    const-string v0, "[^YM]*[DT].*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lmf/javax/xml/datatype/DatatypeFactory;->XDTSCHEMA_DTD:Ljava/util/regex/Pattern;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newInstance()Lmf/javax/xml/datatype/DatatypeFactory;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/datatype/DatatypeConfigurationException;
        }
    .end annotation

    :try_start_0
    const-string v0, "javax.xml.datatype.DatatypeFactory"

    sget-object v1, Lmf/javax/xml/datatype/DatatypeFactory;->DATATYPEFACTORY_IMPLEMENTATION_CLASS:Ljava/lang/String;

    invoke-static {v0, v1}, Lmf/javax/xml/datatype/FactoryFinder;->find(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/javax/xml/datatype/DatatypeFactory;
    :try_end_0
    .catch Lmf/javax/xml/datatype/FactoryFinder$ConfigurationError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lmf/javax/xml/datatype/DatatypeConfigurationException;

    invoke-virtual {v0}, Lmf/javax/xml/datatype/FactoryFinder$ConfigurationError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lmf/javax/xml/datatype/FactoryFinder$ConfigurationError;->getException()Ljava/lang/Exception;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lmf/javax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;)Lmf/javax/xml/datatype/DatatypeFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/datatype/DatatypeConfigurationException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, p1, v0}, Lmf/javax/xml/datatype/FactoryFinder;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmf/javax/xml/datatype/DatatypeFactory;
    :try_end_0
    .catch Lmf/javax/xml/datatype/FactoryFinder$ConfigurationError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lmf/javax/xml/datatype/DatatypeConfigurationException;

    invoke-virtual {p0}, Lmf/javax/xml/datatype/FactoryFinder$ConfigurationError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lmf/javax/xml/datatype/FactoryFinder$ConfigurationError;->getException()Ljava/lang/Exception;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Lmf/javax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public abstract newDuration(J)Lmf/javax/xml/datatype/Duration;
.end method

.method public abstract newDuration(Ljava/lang/String;)Lmf/javax/xml/datatype/Duration;
.end method

.method public newDuration(ZIIIIII)Lmf/javax/xml/datatype/Duration;
    .locals 16

    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p7

    const/4 v6, 0x0

    const/high16 v7, -0x80000000

    if-eq v0, v7, :cond_0

    int-to-long v8, v0

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    move-object v10, v0

    goto :goto_0

    :cond_0
    move-object v10, v6

    :goto_0
    if-eq v1, v7, :cond_1

    int-to-long v0, v1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    move-object v11, v0

    goto :goto_1

    :cond_1
    move-object v11, v6

    :goto_1
    if-eq v2, v7, :cond_2

    int-to-long v0, v2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    move-object v12, v0

    goto :goto_2

    :cond_2
    move-object v12, v6

    :goto_2
    if-eq v3, v7, :cond_3

    int-to-long v0, v3

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    move-object v13, v0

    goto :goto_3

    :cond_3
    move-object v13, v6

    :goto_3
    if-eq v4, v7, :cond_4

    int-to-long v0, v4

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    move-object v14, v0

    goto :goto_4

    :cond_4
    move-object v14, v6

    :goto_4
    if-eq v5, v7, :cond_5

    int-to-long v0, v5

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v6

    :cond_5
    move-object v15, v6

    move-object/from16 v8, p0

    move/from16 v9, p1

    invoke-virtual/range {v8 .. v15}, Lmf/javax/xml/datatype/DatatypeFactory;->newDuration(ZLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigDecimal;)Lmf/javax/xml/datatype/Duration;

    move-result-object v0

    return-object v0
.end method

.method public abstract newDuration(ZLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigDecimal;)Lmf/javax/xml/datatype/Duration;
.end method

.method public newDurationDayTime(J)Lmf/javax/xml/datatype/Duration;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lmf/javax/xml/datatype/DatatypeFactory;->newDuration(J)Lmf/javax/xml/datatype/Duration;

    move-result-object p1

    return-object p1
.end method

.method public newDurationDayTime(Ljava/lang/String;)Lmf/javax/xml/datatype/Duration;
    .locals 3

    if-eqz p1, :cond_1

    sget-object v0, Lmf/javax/xml/datatype/DatatypeFactory;->XDTSCHEMA_DTD:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lmf/javax/xml/datatype/DatatypeFactory;->newDuration(Ljava/lang/String;)Lmf/javax/xml/datatype/Duration;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Trying to create an xdt:dayTimeDuration with an invalid lexical representation of \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\", data model requires years and months only."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Trying to create an xdt:dayTimeDuration with an invalid lexical representation of \"null\""

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public newDurationDayTime(ZIIII)Lmf/javax/xml/datatype/Duration;
    .locals 8

    int-to-long v0, p2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    int-to-long p2, p3

    invoke-static {p2, p3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    int-to-long p2, p4

    invoke-static {p2, p3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    int-to-long p2, p5

    invoke-static {p2, p3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    move-object v2, p0

    move v3, p1

    invoke-virtual/range {v2 .. v7}, Lmf/javax/xml/datatype/DatatypeFactory;->newDurationDayTime(ZLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Lmf/javax/xml/datatype/Duration;

    move-result-object p1

    return-object p1
.end method

.method public newDurationDayTime(ZLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Lmf/javax/xml/datatype/Duration;
    .locals 9

    if-eqz p5, :cond_0

    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p5}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v8, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move v2, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v1 .. v8}, Lmf/javax/xml/datatype/DatatypeFactory;->newDuration(ZLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigDecimal;)Lmf/javax/xml/datatype/Duration;

    move-result-object p1

    return-object p1
.end method

.method public newDurationYearMonth(J)Lmf/javax/xml/datatype/Duration;
    .locals 2

    invoke-virtual {p0, p1, p2}, Lmf/javax/xml/datatype/DatatypeFactory;->newDuration(J)Lmf/javax/xml/datatype/Duration;

    move-result-object p1

    invoke-virtual {p1}, Lmf/javax/xml/datatype/Duration;->getSign()I

    move-result p2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    :goto_0
    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->YEARS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p1, v0}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    if-nez v0, :cond_1

    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    :cond_1
    sget-object v1, Lmf/javax/xml/datatype/DatatypeConstants;->MONTHS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p1, v1}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object p1

    check-cast p1, Ljava/math/BigInteger;

    if-nez p1, :cond_2

    sget-object p1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    :cond_2
    invoke-virtual {p0, p2, v0, p1}, Lmf/javax/xml/datatype/DatatypeFactory;->newDurationYearMonth(ZLjava/math/BigInteger;Ljava/math/BigInteger;)Lmf/javax/xml/datatype/Duration;

    move-result-object p1

    return-object p1
.end method

.method public newDurationYearMonth(Ljava/lang/String;)Lmf/javax/xml/datatype/Duration;
    .locals 3

    if-eqz p1, :cond_1

    sget-object v0, Lmf/javax/xml/datatype/DatatypeFactory;->XDTSCHEMA_YMD:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lmf/javax/xml/datatype/DatatypeFactory;->newDuration(Ljava/lang/String;)Lmf/javax/xml/datatype/Duration;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Trying to create an xdt:yearMonthDuration with an invalid lexical representation of \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\", data model requires days and times only."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Trying to create an xdt:yearMonthDuration with an invalid lexical representation of \"null\""

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public newDurationYearMonth(ZII)Lmf/javax/xml/datatype/Duration;
    .locals 2

    int-to-long v0, p2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p2

    int-to-long v0, p3

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lmf/javax/xml/datatype/DatatypeFactory;->newDurationYearMonth(ZLjava/math/BigInteger;Ljava/math/BigInteger;)Lmf/javax/xml/datatype/Duration;

    move-result-object p1

    return-object p1
.end method

.method public newDurationYearMonth(ZLjava/math/BigInteger;Ljava/math/BigInteger;)Lmf/javax/xml/datatype/Duration;
    .locals 8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v7}, Lmf/javax/xml/datatype/DatatypeFactory;->newDuration(ZLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigDecimal;)Lmf/javax/xml/datatype/Duration;

    move-result-object p1

    return-object p1
.end method

.method public abstract newXMLGregorianCalendar()Lmf/javax/xml/datatype/XMLGregorianCalendar;
.end method

.method public newXMLGregorianCalendar(IIIIIIII)Lmf/javax/xml/datatype/XMLGregorianCalendar;
    .locals 13

    move v0, p1

    move/from16 v1, p7

    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    if-eq v0, v3, :cond_0

    int-to-long v4, v0

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    move-object v5, v0

    goto :goto_0

    :cond_0
    move-object v5, v2

    :goto_0
    if-eq v1, v3, :cond_2

    if-ltz v1, :cond_1

    const/16 v0, 0x3e8

    if-gt v1, v0, :cond_1

    int-to-long v0, v1

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->movePointLeft(I)Ljava/math/BigDecimal;

    move-result-object v2

    move-object v11, v2

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "javax.xml.datatype.DatatypeFactory#newXMLGregorianCalendar(int year, int month, int day, int hour, int minute, int second, int millisecond, int timezone)with invalid millisecond: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move-object v11, v2

    :goto_1
    move-object v4, p0

    move v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v12, p8

    invoke-virtual/range {v4 .. v12}, Lmf/javax/xml/datatype/DatatypeFactory;->newXMLGregorianCalendar(Ljava/math/BigInteger;IIIIILjava/math/BigDecimal;I)Lmf/javax/xml/datatype/XMLGregorianCalendar;

    move-result-object v0

    return-object v0
.end method

.method public abstract newXMLGregorianCalendar(Ljava/lang/String;)Lmf/javax/xml/datatype/XMLGregorianCalendar;
.end method

.method public abstract newXMLGregorianCalendar(Ljava/math/BigInteger;IIIIILjava/math/BigDecimal;I)Lmf/javax/xml/datatype/XMLGregorianCalendar;
.end method

.method public abstract newXMLGregorianCalendar(Ljava/util/GregorianCalendar;)Lmf/javax/xml/datatype/XMLGregorianCalendar;
.end method

.method public newXMLGregorianCalendarDate(IIII)Lmf/javax/xml/datatype/XMLGregorianCalendar;
    .locals 9

    const/high16 v4, -0x80000000

    const/high16 v5, -0x80000000

    const/high16 v6, -0x80000000

    const/high16 v7, -0x80000000

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v8, p4

    invoke-virtual/range {v0 .. v8}, Lmf/javax/xml/datatype/DatatypeFactory;->newXMLGregorianCalendar(IIIIIIII)Lmf/javax/xml/datatype/XMLGregorianCalendar;

    move-result-object p1

    return-object p1
.end method

.method public newXMLGregorianCalendarTime(IIII)Lmf/javax/xml/datatype/XMLGregorianCalendar;
    .locals 9

    const/high16 v1, -0x80000000

    const/high16 v2, -0x80000000

    const/high16 v3, -0x80000000

    const/high16 v7, -0x80000000

    move-object v0, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v8, p4

    invoke-virtual/range {v0 .. v8}, Lmf/javax/xml/datatype/DatatypeFactory;->newXMLGregorianCalendar(IIIIIIII)Lmf/javax/xml/datatype/XMLGregorianCalendar;

    move-result-object p1

    return-object p1
.end method

.method public newXMLGregorianCalendarTime(IIIII)Lmf/javax/xml/datatype/XMLGregorianCalendar;
    .locals 6

    const/high16 v0, -0x80000000

    if-eq p4, v0, :cond_1

    if-ltz p4, :cond_0

    const/16 v0, 0x3e8

    if-gt p4, v0, :cond_0

    int-to-long v0, p4

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p4

    const/4 v0, 0x3

    invoke-virtual {p4, v0}, Ljava/math/BigDecimal;->movePointLeft(I)Ljava/math/BigDecimal;

    move-result-object p4

    move-object v4, p4

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "javax.xml.datatype.DatatypeFactory#newXMLGregorianCalendarTime(int hours, int minutes, int seconds, int milliseconds, int timezone)with invalid milliseconds: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 p4, 0x0

    move-object v4, p4

    :goto_0
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lmf/javax/xml/datatype/DatatypeFactory;->newXMLGregorianCalendarTime(IIILjava/math/BigDecimal;I)Lmf/javax/xml/datatype/XMLGregorianCalendar;

    move-result-object p1

    return-object p1
.end method

.method public newXMLGregorianCalendarTime(IIILjava/math/BigDecimal;I)Lmf/javax/xml/datatype/XMLGregorianCalendar;
    .locals 9

    const/4 v1, 0x0

    const/high16 v2, -0x80000000

    const/high16 v3, -0x80000000

    move-object v0, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    move v8, p5

    invoke-virtual/range {v0 .. v8}, Lmf/javax/xml/datatype/DatatypeFactory;->newXMLGregorianCalendar(Ljava/math/BigInteger;IIIIILjava/math/BigDecimal;I)Lmf/javax/xml/datatype/XMLGregorianCalendar;

    move-result-object p1

    return-object p1
.end method
