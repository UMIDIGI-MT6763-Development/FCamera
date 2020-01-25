.class Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;
.super Lmf/javax/xml/datatype/XMLGregorianCalendar;
.source "XMLGregorianCalendarImpl.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$DaysInMonth;,
        Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;
    }
.end annotation


# static fields
.field private static final BILLION_B:Ljava/math/BigInteger;

.field private static final BILLION_I:I = 0x3b9aca00

.field private static final DAY:I = 0x2

.field private static final DECIMAL_ONE:Ljava/math/BigDecimal;

.field private static final DECIMAL_SIXTY:Ljava/math/BigDecimal;

.field private static final DECIMAL_ZERO:Ljava/math/BigDecimal;

.field private static final FIELD_NAME:[Ljava/lang/String;

.field private static final FOUR:Ljava/math/BigInteger;

.field private static final FOUR_HUNDRED:Ljava/math/BigInteger;

.field private static final HOUR:I = 0x3

.field private static final HUNDRED:Ljava/math/BigInteger;

.field public static final LEAP_YEAR_DEFAULT:Lmf/javax/xml/datatype/XMLGregorianCalendar;

.field private static final MAX_FIELD_VALUE:[I

.field private static final MILLISECOND:I = 0x6

.field private static final MINUTE:I = 0x4

.field private static final MIN_FIELD_VALUE:[I

.field private static final MONTH:I = 0x1

.field private static final PURE_GREGORIAN_CHANGE:Ljava/util/Date;

.field private static final SECOND:I = 0x5

.field private static final SIXTY:Ljava/math/BigInteger;

.field private static final TIMEZONE:I = 0x7

.field private static final TWELVE:Ljava/math/BigInteger;

.field private static final TWENTY_FOUR:Ljava/math/BigInteger;

.field private static final YEAR:I = 0x0

.field private static final serialVersionUID:J = 0x3632c76f616c9fe2L


# instance fields
.field private day:I

.field private eon:Ljava/math/BigInteger;

.field private fractionalSecond:Ljava/math/BigDecimal;

.field private hour:I

.field private minute:I

.field private month:I

.field private orig_day:I

.field private orig_eon:Ljava/math/BigInteger;

.field private orig_fracSeconds:Ljava/math/BigDecimal;

.field private orig_hour:I

.field private orig_minute:I

.field private orig_month:I

.field private orig_second:I

.field private orig_timezone:I

.field private orig_year:I

.field private second:I

.field private timezone:I

.field private year:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const-wide/32 v0, 0x3b9aca00

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->BILLION_B:Ljava/math/BigInteger;

    new-instance v0, Ljava/util/Date;

    const-wide/high16 v1, -0x8000000000000000L

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    sput-object v0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->PURE_GREGORIAN_CHANGE:Ljava/util/Date;

    const/16 v0, 0x8

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    aput v3, v1, v2

    const/4 v2, 0x1

    aput v2, v1, v2

    const/4 v3, 0x2

    aput v2, v1, v3

    const/4 v2, 0x7

    const/16 v3, -0x348

    aput v3, v1, v2

    sput-object v1, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->MIN_FIELD_VALUE:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->MAX_FIELD_VALUE:[I

    const-string v1, "Year"

    const-string v2, "Month"

    const-string v3, "Day"

    const-string v4, "Hour"

    const-string v5, "Minute"

    const-string v6, "Second"

    const-string v7, "Millisecond"

    const-string v8, "Timezone"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->FIELD_NAME:[Ljava/lang/String;

    const/16 v1, 0x190

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, -0x80000000

    const/high16 v8, -0x80000000

    invoke-static/range {v1 .. v8}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->createDateTime(IIIIIIII)Lmf/javax/xml/datatype/XMLGregorianCalendar;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->LEAP_YEAR_DEFAULT:Lmf/javax/xml/datatype/XMLGregorianCalendar;

    const-wide/16 v0, 0x4

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->FOUR:Ljava/math/BigInteger;

    const-wide/16 v0, 0x64

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->HUNDRED:Ljava/math/BigInteger;

    const-wide/16 v0, 0x190

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->FOUR_HUNDRED:Ljava/math/BigInteger;

    const-wide/16 v0, 0x3c

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    sput-object v2, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->SIXTY:Ljava/math/BigInteger;

    const-wide/16 v2, 0x18

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    sput-object v2, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->TWENTY_FOUR:Ljava/math/BigInteger;

    const-wide/16 v2, 0xc

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    sput-object v2, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->TWELVE:Ljava/math/BigInteger;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v2

    sput-object v2, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->DECIMAL_ZERO:Ljava/math/BigDecimal;

    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v2

    sput-object v2, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->DECIMAL_ONE:Ljava/math/BigDecimal;

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->DECIMAL_SIXTY:Ljava/math/BigDecimal;

    return-void

    nop

    :array_0
    .array-data 4
        0x7fffffff
        0xc
        0x1f
        0x18
        0x3b
        0x3c
        0x3e7
        0x348
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lmf/javax/xml/datatype/XMLGregorianCalendar;-><init>()V

    const/high16 v0, -0x80000000

    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_year:I

    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_month:I

    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_day:I

    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_hour:I

    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_minute:I

    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_second:I

    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_timezone:I

    const/4 v1, 0x0

    iput-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->eon:Ljava/math/BigInteger;

    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->month:I

    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->day:I

    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->timezone:I

    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->hour:I

    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->minute:I

    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->second:I

    iput-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->fractionalSecond:Ljava/math/BigDecimal;

    return-void
.end method

.method private constructor <init>(IIIIIIII)V
    .locals 6

    invoke-direct {p0}, Lmf/javax/xml/datatype/XMLGregorianCalendar;-><init>()V

    const/high16 v0, -0x80000000

    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_year:I

    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_month:I

    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_day:I

    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_hour:I

    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_minute:I

    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_second:I

    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_timezone:I

    const/4 v1, 0x0

    iput-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->eon:Ljava/math/BigInteger;

    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->month:I

    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->day:I

    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->timezone:I

    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->hour:I

    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->minute:I

    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->second:I

    iput-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->fractionalSecond:Ljava/math/BigDecimal;

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setYear(I)V

    invoke-virtual {p0, p2}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setMonth(I)V

    invoke-virtual {p0, p3}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setDay(I)V

    invoke-virtual {p0, p4, p5, p6}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setTime(III)V

    invoke-virtual {p0, p8}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setTimezone(I)V

    const/4 v2, 0x3

    if-eq p7, v0, :cond_0

    int-to-long v3, p7

    invoke-static {v3, v4, v2}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setFractionalSecond(Ljava/math/BigDecimal;)V

    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->save()V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    const/4 p1, 0x1

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v3, p1

    const/4 p1, 0x2

    new-instance p2, Ljava/lang/Integer;

    invoke-direct {p2, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object p2, v3, p1

    new-instance p1, Ljava/lang/Integer;

    invoke-direct {p1, p4}, Ljava/lang/Integer;-><init>(I)V

    aput-object p1, v3, v2

    const/4 p1, 0x4

    new-instance p2, Ljava/lang/Integer;

    invoke-direct {p2, p5}, Ljava/lang/Integer;-><init>(I)V

    aput-object p2, v3, p1

    const/4 p1, 0x5

    new-instance p2, Ljava/lang/Integer;

    invoke-direct {p2, p6}, Ljava/lang/Integer;-><init>(I)V

    aput-object p2, v3, p1

    const/4 p1, 0x6

    new-instance p2, Ljava/lang/Integer;

    invoke-direct {p2, p7}, Ljava/lang/Integer;-><init>(I)V

    aput-object p2, v3, p1

    const/4 p1, 0x7

    new-instance p2, Ljava/lang/Integer;

    invoke-direct {p2, p8}, Ljava/lang/Integer;-><init>(I)V

    aput-object p2, v3, p1

    const-string p1, "InvalidXGCValue-milli"

    invoke-static {v1, p1, v3}, Lmf/org/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-direct {p0}, Lmf/javax/xml/datatype/XMLGregorianCalendar;-><init>()V

    const/high16 v0, -0x80000000

    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_year:I

    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_month:I

    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_day:I

    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_hour:I

    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_minute:I

    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_second:I

    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_timezone:I

    const/4 v1, 0x0

    iput-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->eon:Ljava/math/BigInteger;

    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->month:I

    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->day:I

    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->timezone:I

    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->hour:I

    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->minute:I

    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->second:I

    iput-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->fractionalSecond:Ljava/math/BigDecimal;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x54

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v2, v3, :cond_0

    const-string v0, "%Y-%M-%DT%h:%m:%s%z"

    goto/16 :goto_2

    :cond_0
    const/16 v2, 0x3a

    const/4 v6, 0x2

    const/4 v7, 0x3

    if-lt v0, v7, :cond_1

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v2, :cond_1

    const-string v0, "%h:%m:%s%z"

    goto/16 :goto_2

    :cond_1
    const-string v8, "--"

    invoke-virtual {p1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    const/16 v9, 0x2d

    if-eqz v8, :cond_6

    if-lt v0, v7, :cond_2

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v9, :cond_2

    const-string v0, "---%D%z"

    goto :goto_2

    :cond_2
    const/4 v2, 0x4

    if-eq v0, v2, :cond_4

    const/4 v3, 0x6

    if-lt v0, v3, :cond_3

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v6, 0x2b

    if-eq v3, v6, :cond_4

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v9, :cond_3

    const/4 v2, 0x5

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v9, :cond_4

    const/16 v2, 0xa

    if-ne v0, v2, :cond_3

    goto :goto_0

    :cond_3
    const-string v0, "--%M-%D%z"

    goto :goto_2

    :cond_4
    :goto_0
    const-string v0, "--%M--%z"

    new-instance v2, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;

    invoke-direct {v2, p0, v0, p1, v1}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;-><init>(Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;)V

    :try_start_0
    invoke-virtual {v2}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->parse()V

    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->save()V

    return-void

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "InvalidXGCRepresentation"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string v0, "--%M%z"

    goto :goto_2

    :cond_6
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-eq v2, v3, :cond_7

    add-int/lit8 v0, v0, -0x6

    :cond_7
    move v3, v4

    move v2, v5

    :goto_1
    if-lt v2, v0, :cond_b

    if-nez v3, :cond_8

    const-string v0, "%Y%z"

    goto :goto_2

    :cond_8
    if-ne v3, v5, :cond_9

    const-string v0, "%Y-%M%z"

    goto :goto_2

    :cond_9
    const-string v0, "%Y-%M-%D%z"

    :goto_2
    new-instance v2, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;

    invoke-direct {v2, p0, v0, p1, v1}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;-><init>(Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;)V

    invoke-virtual {v2}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->parse()V

    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->save()V

    return-void

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p1, v2, v4

    const-string p1, "InvalidXGCRepresentation"

    invoke-static {v1, p1, v2}, Lmf/org/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v9, :cond_c

    add-int/lit8 v3, v3, 0x1

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method protected constructor <init>(Ljava/math/BigInteger;IIIIILjava/math/BigDecimal;I)V
    .locals 4

    invoke-direct {p0}, Lmf/javax/xml/datatype/XMLGregorianCalendar;-><init>()V

    const/high16 v0, -0x80000000

    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_year:I

    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_month:I

    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_day:I

    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_hour:I

    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_minute:I

    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_second:I

    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_timezone:I

    const/4 v1, 0x0

    iput-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->eon:Ljava/math/BigInteger;

    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->month:I

    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->day:I

    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->timezone:I

    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->hour:I

    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->minute:I

    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->second:I

    iput-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->fractionalSecond:Ljava/math/BigDecimal;

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setYear(Ljava/math/BigInteger;)V

    invoke-virtual {p0, p2}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setMonth(I)V

    invoke-virtual {p0, p3}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setDay(I)V

    invoke-virtual {p0, p4, p5, p6, p7}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setTime(IIILjava/math/BigDecimal;)V

    invoke-virtual {p0, p8}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setTimezone(I)V

    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->save()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, p1

    const/4 p1, 0x2

    new-instance p2, Ljava/lang/Integer;

    invoke-direct {p2, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object p2, v2, p1

    const/4 p1, 0x3

    new-instance p2, Ljava/lang/Integer;

    invoke-direct {p2, p4}, Ljava/lang/Integer;-><init>(I)V

    aput-object p2, v2, p1

    const/4 p1, 0x4

    new-instance p2, Ljava/lang/Integer;

    invoke-direct {p2, p5}, Ljava/lang/Integer;-><init>(I)V

    aput-object p2, v2, p1

    const/4 p1, 0x5

    new-instance p2, Ljava/lang/Integer;

    invoke-direct {p2, p6}, Ljava/lang/Integer;-><init>(I)V

    aput-object p2, v2, p1

    const/4 p1, 0x6

    aput-object p7, v2, p1

    const/4 p1, 0x7

    new-instance p2, Ljava/lang/Integer;

    invoke-direct {p2, p8}, Ljava/lang/Integer;-><init>(I)V

    aput-object p2, v2, p1

    const-string p1, "InvalidXGCValue-fractional"

    invoke-static {v1, p1, v2}, Lmf/org/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/util/GregorianCalendar;)V
    .locals 4

    invoke-direct {p0}, Lmf/javax/xml/datatype/XMLGregorianCalendar;-><init>()V

    const/high16 v0, -0x80000000

    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_year:I

    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_month:I

    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_day:I

    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_hour:I

    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_minute:I

    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_second:I

    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_timezone:I

    const/4 v1, 0x0

    iput-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->eon:Ljava/math/BigInteger;

    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->month:I

    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->day:I

    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->timezone:I

    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->hour:I

    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->minute:I

    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->second:I

    iput-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->fractionalSecond:Ljava/math/BigDecimal;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    if-nez v2, :cond_0

    neg-int v1, v1

    :cond_0
    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setYear(I)V

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setMonth(I)V

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setDay(I)V

    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    const/16 v1, 0xc

    invoke-virtual {p1, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    const/16 v2, 0xd

    invoke-virtual {p1, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    const/16 v3, 0xe

    invoke-virtual {p1, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setTime(IIII)V

    const/16 v0, 0xf

    invoke-virtual {p1, v0}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    const/16 v1, 0x10

    invoke-virtual {p1, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result p1

    add-int/2addr v0, p1

    const p1, 0xea60

    div-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setTimezone(I)V

    invoke-direct {p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->save()V

    return-void
.end method

.method static synthetic access$0(C)Z
    .locals 0

    invoke-static {p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->isDigit(C)Z

    move-result p0

    return p0
.end method

.method private checkFieldValueConstraint(II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    sget-object v0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->MIN_FIELD_VALUE:[I

    aget v0, v0, p1

    if-ge p2, v0, :cond_0

    const/high16 v0, -0x80000000

    if-ne p2, v0, :cond_1

    :cond_0
    sget-object v0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->MAX_FIELD_VALUE:[I

    aget v0, v0, p1

    if-gt p2, v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    const/4 p2, 0x1

    sget-object v3, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->FIELD_NAME:[Ljava/lang/String;

    aget-object p1, v3, p1

    aput-object p1, v2, p2

    const-string p1, "InvalidFieldValue"

    invoke-static {v1, p1, v2}, Lmf/org/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static compareField(II)I
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/high16 v0, -0x80000000

    if-eq p0, v0, :cond_3

    if-ne p1, v0, :cond_1

    goto :goto_1

    :cond_1
    if-ge p0, p1, :cond_2

    const/4 p0, -0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    :goto_0
    return p0

    :cond_3
    :goto_1
    const/4 p0, 0x2

    return p0
.end method

.method private static compareField(Ljava/math/BigDecimal;Ljava/math/BigDecimal;)I
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-nez p0, :cond_1

    sget-object p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->DECIMAL_ZERO:Ljava/math/BigDecimal;

    :cond_1
    if-nez p1, :cond_2

    sget-object p1, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->DECIMAL_ZERO:Ljava/math/BigDecimal;

    :cond_2
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p0

    return p0
.end method

.method private static compareField(Ljava/math/BigInteger;Ljava/math/BigInteger;)I
    .locals 1

    const/4 v0, 0x2

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0

    :cond_1
    if-nez p1, :cond_2

    return v0

    :cond_2
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p0

    return p0
.end method

.method public static createDate(IIII)Lmf/javax/xml/datatype/XMLGregorianCalendar;
    .locals 10

    new-instance v9, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;

    const/high16 v4, -0x80000000

    const/high16 v5, -0x80000000

    const/high16 v6, -0x80000000

    const/high16 v7, -0x80000000

    move-object v0, v9

    move v1, p0

    move v2, p1

    move v3, p2

    move v8, p3

    invoke-direct/range {v0 .. v8}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;-><init>(IIIIIIII)V

    return-object v9
.end method

.method public static createDateTime(IIIIII)Lmf/javax/xml/datatype/XMLGregorianCalendar;
    .locals 10

    new-instance v9, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;

    const/high16 v7, -0x80000000

    const/high16 v8, -0x80000000

    move-object v0, v9

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v8}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;-><init>(IIIIIIII)V

    return-object v9
.end method

.method public static createDateTime(IIIIIIII)Lmf/javax/xml/datatype/XMLGregorianCalendar;
    .locals 10

    new-instance v9, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;

    move-object v0, v9

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;-><init>(IIIIIIII)V

    return-object v9
.end method

.method public static createDateTime(Ljava/math/BigInteger;IIIIILjava/math/BigDecimal;I)Lmf/javax/xml/datatype/XMLGregorianCalendar;
    .locals 10

    new-instance v9, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;

    move-object v0, v9

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;-><init>(Ljava/math/BigInteger;IIIIILjava/math/BigDecimal;I)V

    return-object v9
.end method

.method public static createTime(IIII)Lmf/javax/xml/datatype/XMLGregorianCalendar;
    .locals 10

    new-instance v9, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;

    const/high16 v1, -0x80000000

    const/high16 v2, -0x80000000

    const/high16 v3, -0x80000000

    const/high16 v7, -0x80000000

    move-object v0, v9

    move v4, p0

    move v5, p1

    move v6, p2

    move v8, p3

    invoke-direct/range {v0 .. v8}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;-><init>(IIIIIIII)V

    return-object v9
.end method

.method public static createTime(IIIII)Lmf/javax/xml/datatype/XMLGregorianCalendar;
    .locals 10

    new-instance v9, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;

    const/high16 v1, -0x80000000

    const/high16 v2, -0x80000000

    const/high16 v3, -0x80000000

    move-object v0, v9

    move v4, p0

    move v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    invoke-direct/range {v0 .. v8}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;-><init>(IIIIIIII)V

    return-object v9
.end method

.method public static createTime(IIILjava/math/BigDecimal;I)Lmf/javax/xml/datatype/XMLGregorianCalendar;
    .locals 10

    new-instance v9, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;

    const/4 v1, 0x0

    const/high16 v2, -0x80000000

    const/high16 v3, -0x80000000

    move-object v0, v9

    move v4, p0

    move v5, p1

    move v6, p2

    move-object v7, p3

    move v8, p4

    invoke-direct/range {v0 .. v8}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;-><init>(Ljava/math/BigInteger;IIIIILjava/math/BigDecimal;I)V

    return-object v9
.end method

.method private format(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-lt v2, v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x25

    if-eq v2, v4, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v2, v3

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v3, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x44

    const/4 v5, 0x2

    if-eq v3, v4, :cond_d

    const/16 v4, 0x4d

    if-eq v3, v4, :cond_c

    const/16 v4, 0x59

    const/16 v6, 0x2d

    if-eq v3, v4, :cond_9

    const/16 v4, 0x68

    if-eq v3, v4, :cond_8

    const/16 v4, 0x6d

    if-eq v3, v4, :cond_7

    const/16 v4, 0x73

    if-eq v3, v4, :cond_6

    const/16 v4, 0x7a

    if-ne v3, v4, :cond_5

    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getTimezone()I

    move-result v3

    if-nez v3, :cond_3

    const/16 v3, 0x5a

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_3
    const/high16 v4, -0x80000000

    if-eq v3, v4, :cond_0

    if-gez v3, :cond_4

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    mul-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_4
    const/16 v4, 0x2b

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_1
    div-int/lit8 v4, v3, 0x3c

    invoke-direct {p0, v0, v4, v5}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->printNumber(Ljava/lang/StringBuffer;II)V

    const/16 v4, 0x3a

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    rem-int/lit8 v3, v3, 0x3c

    invoke-direct {p0, v0, v3, v5}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->printNumber(Ljava/lang/StringBuffer;II)V

    goto :goto_0

    :cond_5
    new-instance p1, Ljava/lang/InternalError;

    invoke-direct {p1}, Ljava/lang/InternalError;-><init>()V

    throw p1

    :cond_6
    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getSecond()I

    move-result v3

    invoke-direct {p0, v0, v3, v5}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->printNumber(Ljava/lang/StringBuffer;II)V

    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getFractionalSecond()Ljava/math/BigDecimal;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getFractionalSecond()Ljava/math/BigDecimal;

    move-result-object v3

    invoke-direct {p0, v3}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->toString(Ljava/math/BigDecimal;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getMinute()I

    move-result v3

    invoke-direct {p0, v0, v3, v5}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->printNumber(Ljava/lang/StringBuffer;II)V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getHour()I

    move-result v3

    invoke-direct {p0, v0, v3, v5}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->printNumber(Ljava/lang/StringBuffer;II)V

    goto/16 :goto_0

    :cond_9
    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->eon:Ljava/math/BigInteger;

    const/4 v4, 0x4

    if-nez v3, :cond_b

    iget v3, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    if-gez v3, :cond_a

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget v3, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    neg-int v3, v3

    :cond_a
    invoke-direct {p0, v0, v3, v4}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->printNumber(Ljava/lang/StringBuffer;II)V

    goto/16 :goto_0

    :cond_b
    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getEonAndYear()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {p0, v0, v3, v4}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->printNumber(Ljava/lang/StringBuffer;Ljava/math/BigInteger;I)V

    goto/16 :goto_0

    :cond_c
    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getMonth()I

    move-result v3

    invoke-direct {p0, v0, v3, v5}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->printNumber(Ljava/lang/StringBuffer;II)V

    goto/16 :goto_0

    :cond_d
    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getDay()I

    move-result v3

    invoke-direct {p0, v0, v3, v5}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->printNumber(Ljava/lang/StringBuffer;II)V

    goto/16 :goto_0
.end method

.method private getSeconds()Ljava/math/BigDecimal;
    .locals 2

    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->second:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    sget-object v0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->DECIMAL_ZERO:Ljava/math/BigDecimal;

    return-object v0

    :cond_0
    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->fractionalSecond:Ljava/math/BigDecimal;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v0
.end method

.method private static internalCompare(Lmf/javax/xml/datatype/XMLGregorianCalendar;Lmf/javax/xml/datatype/XMLGregorianCalendar;)I
    .locals 2

    invoke-virtual {p0}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->getEon()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->getEon()Ljava/math/BigInteger;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->getYear()I

    move-result v0

    invoke-virtual {p1}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->getYear()I

    move-result v1

    invoke-static {v0, v1}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->compareField(II)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    :cond_0
    invoke-virtual {p0}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->getEonAndYear()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->getEonAndYear()Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v0, v1}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->compareField(Ljava/math/BigInteger;Ljava/math/BigInteger;)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->getMonth()I

    move-result v0

    invoke-virtual {p1}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->getMonth()I

    move-result v1

    invoke-static {v0, v1}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->compareField(II)I

    move-result v0

    if-eqz v0, :cond_2

    return v0

    :cond_2
    invoke-virtual {p0}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->getDay()I

    move-result v0

    invoke-virtual {p1}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->getDay()I

    move-result v1

    invoke-static {v0, v1}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->compareField(II)I

    move-result v0

    if-eqz v0, :cond_3

    return v0

    :cond_3
    invoke-virtual {p0}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->getHour()I

    move-result v0

    invoke-virtual {p1}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->getHour()I

    move-result v1

    invoke-static {v0, v1}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->compareField(II)I

    move-result v0

    if-eqz v0, :cond_4

    return v0

    :cond_4
    invoke-virtual {p0}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->getMinute()I

    move-result v0

    invoke-virtual {p1}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->getMinute()I

    move-result v1

    invoke-static {v0, v1}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->compareField(II)I

    move-result v0

    if-eqz v0, :cond_5

    return v0

    :cond_5
    invoke-virtual {p0}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->getSecond()I

    move-result v0

    invoke-virtual {p1}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->getSecond()I

    move-result v1

    invoke-static {v0, v1}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->compareField(II)I

    move-result v0

    if-eqz v0, :cond_6

    return v0

    :cond_6
    invoke-virtual {p0}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->getFractionalSecond()Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p1}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->getFractionalSecond()Ljava/math/BigDecimal;

    move-result-object p1

    invoke-static {p0, p1}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->compareField(Ljava/math/BigDecimal;Ljava/math/BigDecimal;)I

    move-result p0

    return p0
.end method

.method private static isDigit(C)Z
    .locals 1

    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static maximumDayInMonthFor(II)I
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    invoke-static {}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$DaysInMonth;->access$0()[I

    move-result-object p0

    aget p0, p0, p1

    return p0

    :cond_0
    rem-int/lit16 p1, p0, 0x190

    if-eqz p1, :cond_2

    rem-int/lit8 p1, p0, 0x64

    if-eqz p1, :cond_1

    rem-int/lit8 p0, p0, 0x4

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$DaysInMonth;->access$0()[I

    move-result-object p0

    aget p0, p0, v0

    return p0

    :cond_2
    :goto_0
    const/16 p0, 0x1d

    return p0
.end method

.method private static maximumDayInMonthFor(Ljava/math/BigInteger;I)I
    .locals 2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    invoke-static {}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$DaysInMonth;->access$0()[I

    move-result-object p0

    aget p0, p0, p1

    return p0

    :cond_0
    sget-object v0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->FOUR_HUNDRED:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->HUNDRED:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->FOUR:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$DaysInMonth;->access$0()[I

    move-result-object p0

    aget p0, p0, p1

    return p0

    :cond_2
    :goto_0
    const/16 p0, 0x1d

    return p0
.end method

.method private normalizeToTimezone(Lmf/javax/xml/datatype/XMLGregorianCalendar;I)Lmf/javax/xml/datatype/XMLGregorianCalendar;
    .locals 10

    invoke-virtual {p1}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmf/javax/xml/datatype/XMLGregorianCalendar;

    neg-int p2, p2

    new-instance v8, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;

    const/4 v9, 0x0

    if-ltz p2, :cond_0

    const/4 v0, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v9

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-gez p2, :cond_1

    neg-int p2, p2

    :cond_1
    move v6, p2

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;-><init>(ZIIIIII)V

    invoke-virtual {p1, v8}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->add(Lmf/javax/xml/datatype/Duration;)V

    invoke-virtual {p1, v9}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->setTimezone(I)V

    return-object p1
.end method

.method public static parse(Ljava/lang/String;)Lmf/javax/xml/datatype/XMLGregorianCalendar;
    .locals 1

    new-instance v0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;

    invoke-direct {v0, p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private printNumber(Ljava/lang/StringBuffer;II)V
    .locals 2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    if-lt v0, p3, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    :cond_0
    const/16 v1, 0x30

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private printNumber(Ljava/lang/StringBuffer;Ljava/math/BigInteger;I)V
    .locals 2

    invoke-virtual {p2}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    if-lt v0, p3, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    :cond_0
    const/16 v1, 0x30

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static sanitize(Ljava/lang/Number;I)Ljava/math/BigInteger;
    .locals 0

    if-eqz p1, :cond_2

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    if-gez p1, :cond_1

    check-cast p0, Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_0

    :cond_1
    check-cast p0, Ljava/math/BigInteger;

    :goto_0
    return-object p0

    :cond_2
    :goto_1
    sget-object p0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    return-object p0
.end method

.method private save()V
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->eon:Ljava/math/BigInteger;

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_eon:Ljava/math/BigInteger;

    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_year:I

    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->month:I

    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_month:I

    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->day:I

    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_day:I

    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->hour:I

    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_hour:I

    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->minute:I

    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_minute:I

    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->second:I

    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_second:I

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->fractionalSecond:Ljava/math/BigDecimal;

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_fracSeconds:Ljava/math/BigDecimal;

    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->timezone:I

    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_timezone:I

    return-void
.end method

.method private setEon(Ljava/math/BigInteger;)V
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->eon:Ljava/math/BigInteger;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->eon:Ljava/math/BigInteger;

    :goto_0
    return-void
.end method

.method private toString(Ljava/math/BigDecimal;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p1}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/math/BigDecimal;->scale()I

    move-result p1

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p1

    if-nez v1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "0."

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    if-lez v1, :cond_2

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x2e

    invoke-virtual {p1, v1, v0}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/StringBuffer;

    rsub-int/lit8 v2, v1, 0x3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {p1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v2, "0."

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    :goto_0
    neg-int v3, v1

    if-lt v2, v3, :cond_3

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    const/16 v3, 0x30

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lmf/org/apache/xerces/jaxp/datatype/SerializedXMLGregorianCalendar;

    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->toXMLFormat()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/jaxp/datatype/SerializedXMLGregorianCalendar;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public add(Lmf/javax/xml/datatype/Duration;)V
    .locals 12

    const/4 v0, 0x6

    new-array v0, v0, [Z

    invoke-virtual {p1}, Lmf/javax/xml/datatype/Duration;->getSign()I

    move-result v1

    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getMonth()I

    move-result v2

    const/high16 v3, -0x80000000

    const/4 v4, 0x1

    if-ne v2, v3, :cond_0

    sget-object v2, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->MIN_FIELD_VALUE:[I

    aget v2, v2, v4

    aput-boolean v4, v0, v4

    :cond_0
    sget-object v5, Lmf/javax/xml/datatype/DatatypeConstants;->MONTHS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p1, v5}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v5

    invoke-static {v5, v1}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->sanitize(Ljava/lang/Number;I)Ljava/math/BigInteger;

    move-result-object v5

    int-to-long v6, v2

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    sget-object v5, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v5}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    sget-object v6, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->TWELVE:Ljava/math/BigInteger;

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {p0, v5}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setMonth(I)V

    new-instance v5, Ljava/math/BigDecimal;

    sget-object v6, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v6}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    new-instance v2, Ljava/math/BigDecimal;

    sget-object v6, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->TWELVE:Ljava/math/BigInteger;

    invoke-direct {v2, v6}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    const/4 v6, 0x3

    invoke-virtual {v5, v2, v6}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getEonAndYear()Ljava/math/BigInteger;

    move-result-object v5

    const/4 v7, 0x0

    if-nez v5, :cond_1

    aput-boolean v4, v0, v7

    sget-object v5, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    :cond_1
    sget-object v8, Lmf/javax/xml/datatype/DatatypeConstants;->YEARS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p1, v8}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v8

    invoke-static {v8, v1}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->sanitize(Ljava/lang/Number;I)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setYear(Ljava/math/BigInteger;)V

    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getSecond()I

    move-result v2

    const/4 v5, 0x5

    if-ne v2, v3, :cond_2

    aput-boolean v4, v0, v5

    sget-object v2, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->DECIMAL_ZERO:Ljava/math/BigDecimal;

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getSeconds()Ljava/math/BigDecimal;

    move-result-object v2

    :goto_0
    sget-object v8, Lmf/javax/xml/datatype/DatatypeConstants;->SECONDS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p1, v8}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v8

    check-cast v8, Ljava/math/BigDecimal;

    invoke-static {v8, v1}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->sanitize(Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    new-instance v8, Ljava/math/BigDecimal;

    new-instance v9, Ljava/math/BigDecimal;

    invoke-virtual {v2}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    sget-object v10, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->DECIMAL_SIXTY:Ljava/math/BigDecimal;

    invoke-virtual {v9, v10, v6}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;

    move-result-object v9

    invoke-virtual {v9}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    sget-object v9, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->DECIMAL_SIXTY:Ljava/math/BigDecimal;

    invoke-virtual {v8, v9}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v8}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v2}, Ljava/math/BigDecimal;->intValue()I

    move-result v9

    invoke-virtual {p0, v9}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setSecond(I)V

    new-instance v9, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getSecond()I

    move-result v10

    int-to-long v10, v10

    invoke-static {v10, v11}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v2, v9}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    sget-object v9, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->DECIMAL_ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v2, v9}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v9

    if-gez v9, :cond_4

    sget-object v9, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->DECIMAL_ONE:Ljava/math/BigDecimal;

    invoke-virtual {v9, v2}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setFractionalSecond(Ljava/math/BigDecimal;)V

    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getSecond()I

    move-result v2

    if-nez v2, :cond_3

    const/16 v2, 0x3b

    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setSecond(I)V

    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v8, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getSecond()I

    move-result v2

    sub-int/2addr v2, v4

    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setSecond(I)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setFractionalSecond(Ljava/math/BigDecimal;)V

    :goto_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getMinute()I

    move-result v2

    if-ne v2, v3, :cond_5

    const/4 v2, 0x4

    aput-boolean v4, v0, v2

    sget-object v9, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->MIN_FIELD_VALUE:[I

    aget v2, v9, v2

    :cond_5
    sget-object v9, Lmf/javax/xml/datatype/DatatypeConstants;->MINUTES:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p1, v9}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v9

    invoke-static {v9, v1}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->sanitize(Ljava/lang/Number;I)Ljava/math/BigInteger;

    move-result-object v9

    int-to-long v10, v2

    invoke-static {v10, v11}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    sget-object v8, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->SIXTY:Ljava/math/BigInteger;

    invoke-virtual {v2, v8}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8}, Ljava/math/BigInteger;->intValue()I

    move-result v8

    invoke-virtual {p0, v8}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setMinute(I)V

    new-instance v8, Ljava/math/BigDecimal;

    invoke-direct {v8, v2}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    sget-object v2, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->DECIMAL_SIXTY:Ljava/math/BigDecimal;

    invoke-virtual {v8, v2, v6}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getHour()I

    move-result v8

    if-ne v8, v3, :cond_6

    aput-boolean v4, v0, v6

    sget-object v8, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->MIN_FIELD_VALUE:[I

    aget v8, v8, v6

    :cond_6
    sget-object v9, Lmf/javax/xml/datatype/DatatypeConstants;->HOURS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p1, v9}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v9

    invoke-static {v9, v1}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->sanitize(Ljava/lang/Number;I)Ljava/math/BigInteger;

    move-result-object v9

    int-to-long v10, v8

    invoke-static {v10, v11}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    sget-object v8, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->TWENTY_FOUR:Ljava/math/BigInteger;

    invoke-virtual {v2, v8}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8}, Ljava/math/BigInteger;->intValue()I

    move-result v8

    invoke-virtual {p0, v8}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setHour(I)V

    new-instance v8, Ljava/math/BigDecimal;

    invoke-direct {v8, v2}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    new-instance v2, Ljava/math/BigDecimal;

    sget-object v9, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->TWENTY_FOUR:Ljava/math/BigInteger;

    invoke-direct {v2, v9}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v8, v2, v6}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getDay()I

    move-result v6

    const/4 v8, 0x2

    if-ne v6, v3, :cond_7

    aput-boolean v4, v0, v8

    sget-object v6, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->MIN_FIELD_VALUE:[I

    aget v6, v6, v8

    :cond_7
    sget-object v9, Lmf/javax/xml/datatype/DatatypeConstants;->DAYS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p1, v9}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object p1

    invoke-static {p1, v1}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->sanitize(Ljava/lang/Number;I)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getEonAndYear()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getMonth()I

    move-result v9

    invoke-static {v1, v9}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->maximumDayInMonthFor(Ljava/math/BigInteger;I)I

    move-result v1

    if-le v6, v1, :cond_8

    int-to-long v9, v1

    invoke-static {v9, v10}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    goto :goto_2

    :cond_8
    if-ge v6, v4, :cond_9

    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    goto :goto_2

    :cond_9
    int-to-long v9, v6

    invoke-static {v9, v10}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    :goto_2
    invoke-virtual {v1, p1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    :cond_a
    :goto_3
    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-gez v1, :cond_c

    iget v1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->month:I

    if-lt v1, v8, :cond_b

    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getEonAndYear()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getMonth()I

    move-result v2

    sub-int/2addr v2, v4

    invoke-static {v1, v2}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->maximumDayInMonthFor(Ljava/math/BigInteger;I)I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    goto :goto_4

    :cond_b
    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getEonAndYear()Ljava/math/BigInteger;

    move-result-object v1

    const-wide/16 v9, 0x1

    invoke-static {v9, v10}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    const/16 v2, 0xc

    invoke-static {v1, v2}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->maximumDayInMonthFor(Ljava/math/BigInteger;I)I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    :goto_4
    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    const/4 v1, -0x1

    goto :goto_5

    :cond_c
    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getEonAndYear()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getMonth()I

    move-result v2

    invoke-static {v1, v2}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->maximumDayInMonthFor(Ljava/math/BigInteger;I)I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-lez v1, :cond_e

    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getEonAndYear()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getMonth()I

    move-result v2

    invoke-static {v1, v2}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->maximumDayInMonthFor(Ljava/math/BigInteger;I)I

    move-result v1

    neg-int v1, v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    move v1, v4

    :goto_5
    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getMonth()I

    move-result v2

    add-int/2addr v2, v1

    sub-int/2addr v2, v4

    rem-int/lit8 v1, v2, 0xc

    if-gez v1, :cond_d

    add-int/lit8 v1, v1, 0xc

    add-int/2addr v1, v4

    int-to-long v9, v2

    invoke-static {v9, v10}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v2

    new-instance v6, Ljava/math/BigDecimal;

    sget-object v9, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->TWELVE:Ljava/math/BigInteger;

    invoke-direct {v6, v9}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v2, v6, v7}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->intValue()I

    move-result v2

    goto :goto_6

    :cond_d
    div-int/lit8 v2, v2, 0xc

    add-int/lit8 v1, v1, 0x1

    :goto_6
    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setMonth(I)V

    if-eqz v2, :cond_a

    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getEonAndYear()Ljava/math/BigInteger;

    move-result-object v1

    int-to-long v9, v2

    invoke-static {v9, v10}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setYear(Ljava/math/BigInteger;)V

    goto/16 :goto_3

    :cond_e
    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setDay(I)V

    :goto_7
    if-le v7, v5, :cond_f

    return-void

    :cond_f
    aget-boolean p1, v0, v7

    if-eqz p1, :cond_10

    packed-switch v7, :pswitch_data_0

    goto :goto_8

    :pswitch_0
    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setSecond(I)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setFractionalSecond(Ljava/math/BigDecimal;)V

    goto :goto_8

    :pswitch_1
    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setMinute(I)V

    goto :goto_8

    :pswitch_2
    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setHour(I)V

    goto :goto_8

    :pswitch_3
    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setDay(I)V

    goto :goto_8

    :pswitch_4
    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setMonth(I)V

    goto :goto_8

    :pswitch_5
    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setYear(I)V

    :cond_10
    :goto_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public clear()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->eon:Ljava/math/BigInteger;

    const/high16 v1, -0x80000000

    iput v1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    iput v1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->month:I

    iput v1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->day:I

    iput v1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->timezone:I

    iput v1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->hour:I

    iput v1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->minute:I

    iput v1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->second:I

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->fractionalSecond:Ljava/math/BigDecimal;

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 10

    new-instance v9, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;

    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getEonAndYear()Ljava/math/BigInteger;

    move-result-object v1

    iget v2, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->month:I

    iget v3, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->day:I

    iget v4, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->hour:I

    iget v5, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->minute:I

    iget v6, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->second:I

    iget-object v7, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->fractionalSecond:Ljava/math/BigDecimal;

    iget v8, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->timezone:I

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;-><init>(Ljava/math/BigInteger;IIIIILjava/math/BigDecimal;I)V

    return-object v9
.end method

.method public compare(Lmf/javax/xml/datatype/XMLGregorianCalendar;)I
    .locals 7

    invoke-virtual {p0}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->getTimezone()I

    move-result v0

    invoke-virtual {p1}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->getTimezone()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-static {p0, p1}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->internalCompare(Lmf/javax/xml/datatype/XMLGregorianCalendar;Lmf/javax/xml/datatype/XMLGregorianCalendar;)I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p0}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->getTimezone()I

    move-result v0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->getTimezone()I

    move-result v0

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->normalize()Lmf/javax/xml/datatype/XMLGregorianCalendar;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;

    invoke-virtual {p1}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->normalize()Lmf/javax/xml/datatype/XMLGregorianCalendar;

    move-result-object p1

    check-cast p1, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;

    invoke-static {v0, p1}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->internalCompare(Lmf/javax/xml/datatype/XMLGregorianCalendar;Lmf/javax/xml/datatype/XMLGregorianCalendar;)I

    move-result p1

    return p1

    :cond_1
    invoke-virtual {p0}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->getTimezone()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/16 v4, 0x348

    const/4 v5, -0x1

    const/16 v6, -0x348

    if-eq v0, v1, :cond_5

    invoke-virtual {p0}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->getTimezone()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->normalize()Lmf/javax/xml/datatype/XMLGregorianCalendar;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;

    goto :goto_0

    :cond_2
    move-object v0, p0

    :goto_0
    invoke-direct {p0, p1, v4}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->normalizeToTimezone(Lmf/javax/xml/datatype/XMLGregorianCalendar;I)Lmf/javax/xml/datatype/XMLGregorianCalendar;

    move-result-object v1

    invoke-static {v0, v1}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->internalCompare(Lmf/javax/xml/datatype/XMLGregorianCalendar;Lmf/javax/xml/datatype/XMLGregorianCalendar;)I

    move-result v1

    if-ne v1, v5, :cond_3

    return v1

    :cond_3
    invoke-direct {p0, p1, v6}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->normalizeToTimezone(Lmf/javax/xml/datatype/XMLGregorianCalendar;I)Lmf/javax/xml/datatype/XMLGregorianCalendar;

    move-result-object p1

    invoke-static {v0, p1}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->internalCompare(Lmf/javax/xml/datatype/XMLGregorianCalendar;Lmf/javax/xml/datatype/XMLGregorianCalendar;)I

    move-result p1

    if-ne p1, v3, :cond_4

    return p1

    :cond_4
    return v2

    :cond_5
    invoke-virtual {p1}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->getTimezone()I

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->getTimezone()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->normalizeToTimezone(Lmf/javax/xml/datatype/XMLGregorianCalendar;I)Lmf/javax/xml/datatype/XMLGregorianCalendar;

    move-result-object p1

    check-cast p1, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;

    :cond_6
    invoke-direct {p0, p0, v6}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->normalizeToTimezone(Lmf/javax/xml/datatype/XMLGregorianCalendar;I)Lmf/javax/xml/datatype/XMLGregorianCalendar;

    move-result-object v0

    invoke-static {v0, p1}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->internalCompare(Lmf/javax/xml/datatype/XMLGregorianCalendar;Lmf/javax/xml/datatype/XMLGregorianCalendar;)I

    move-result v0

    if-ne v0, v5, :cond_7

    return v0

    :cond_7
    invoke-direct {p0, p0, v4}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->normalizeToTimezone(Lmf/javax/xml/datatype/XMLGregorianCalendar;I)Lmf/javax/xml/datatype/XMLGregorianCalendar;

    move-result-object v0

    invoke-static {v0, p1}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->internalCompare(Lmf/javax/xml/datatype/XMLGregorianCalendar;Lmf/javax/xml/datatype/XMLGregorianCalendar;)I

    move-result p1

    if-ne p1, v3, :cond_8

    return p1

    :cond_8
    return v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lmf/javax/xml/datatype/XMLGregorianCalendar;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lmf/javax/xml/datatype/XMLGregorianCalendar;

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->compare(Lmf/javax/xml/datatype/XMLGregorianCalendar;)I

    move-result p1

    if-nez p1, :cond_1

    return v0

    :cond_1
    return v2

    :cond_2
    return v2
.end method

.method public getDay()I
    .locals 1

    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->day:I

    return v0
.end method

.method public getEon()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->eon:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getEonAndYear()Ljava/math/BigInteger;
    .locals 3

    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->eon:Ljava/math/BigInteger;

    if-eqz v2, :cond_0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    :cond_0
    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->eon:Ljava/math/BigInteger;

    if-nez v1, :cond_1

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFractionalSecond()Ljava/math/BigDecimal;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->fractionalSecond:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getHour()I
    .locals 1

    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->hour:I

    return v0
.end method

.method public getMillisecond()I
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->fractionalSecond:Ljava/math/BigDecimal;

    if-nez v0, :cond_0

    const/high16 v0, -0x80000000

    return v0

    :cond_0
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->movePointRight(I)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->intValue()I

    move-result v0

    return v0
.end method

.method public getMinute()I
    .locals 1

    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->minute:I

    return v0
.end method

.method public getMonth()I
    .locals 1

    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->month:I

    return v0
.end method

.method public getSecond()I
    .locals 1

    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->second:I

    return v0
.end method

.method public getTimeZone(I)Ljava/util/TimeZone;
    .locals 4

    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getTimezone()I

    move-result v0

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    if-ne p1, v1, :cond_1

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p1

    goto :goto_2

    :cond_1
    const/16 v0, 0x2d

    if-gez p1, :cond_2

    move v1, v0

    goto :goto_1

    :cond_2
    const/16 v1, 0x2b

    :goto_1
    if-ne v1, v0, :cond_3

    neg-int p1, p1

    :cond_3
    div-int/lit8 v0, p1, 0x3c

    mul-int/lit8 v2, v0, 0x3c

    sub-int/2addr p1, v2

    new-instance v2, Ljava/lang/StringBuffer;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v3, "GMT"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    if-eqz p1, :cond_5

    const/16 v0, 0xa

    if-ge p1, v0, :cond_4

    const/16 v0, 0x30

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_4
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    :goto_2
    return-object p1
.end method

.method public getTimezone()I
    .locals 1

    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->timezone:I

    return v0
.end method

.method public getXMLSchemaType()Lmf/javax/xml/namespace/QName;
    .locals 4

    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->month:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->day:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->hour:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->minute:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->second:I

    if-eq v0, v1, :cond_0

    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->DATETIME:Lmf/javax/xml/namespace/QName;

    return-object v0

    :cond_0
    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->month:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->day:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->hour:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->minute:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->second:I

    if-ne v0, v1, :cond_1

    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->DATE:Lmf/javax/xml/namespace/QName;

    return-object v0

    :cond_1
    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->month:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->day:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->hour:I

    if-eq v0, v1, :cond_2

    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->minute:I

    if-eq v0, v1, :cond_2

    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->second:I

    if-eq v0, v1, :cond_2

    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->TIME:Lmf/javax/xml/namespace/QName;

    return-object v0

    :cond_2
    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    if-eq v0, v1, :cond_3

    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->month:I

    if-eq v0, v1, :cond_3

    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->day:I

    if-ne v0, v1, :cond_3

    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->hour:I

    if-ne v0, v1, :cond_3

    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->minute:I

    if-ne v0, v1, :cond_3

    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->second:I

    if-ne v0, v1, :cond_3

    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->GYEARMONTH:Lmf/javax/xml/namespace/QName;

    return-object v0

    :cond_3
    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    if-ne v0, v1, :cond_4

    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->month:I

    if-eq v0, v1, :cond_4

    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->day:I

    if-eq v0, v1, :cond_4

    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->hour:I

    if-ne v0, v1, :cond_4

    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->minute:I

    if-ne v0, v1, :cond_4

    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->second:I

    if-ne v0, v1, :cond_4

    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->GMONTHDAY:Lmf/javax/xml/namespace/QName;

    return-object v0

    :cond_4
    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    if-eq v0, v1, :cond_5

    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->month:I

    if-ne v0, v1, :cond_5

    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->day:I

    if-ne v0, v1, :cond_5

    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->hour:I

    if-ne v0, v1, :cond_5

    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->minute:I

    if-ne v0, v1, :cond_5

    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->second:I

    if-ne v0, v1, :cond_5

    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->GYEAR:Lmf/javax/xml/namespace/QName;

    return-object v0

    :cond_5
    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    if-ne v0, v1, :cond_6

    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->month:I

    if-eq v0, v1, :cond_6

    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->day:I

    if-ne v0, v1, :cond_6

    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->hour:I

    if-ne v0, v1, :cond_6

    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->minute:I

    if-ne v0, v1, :cond_6

    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->second:I

    if-ne v0, v1, :cond_6

    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->GMONTH:Lmf/javax/xml/namespace/QName;

    return-object v0

    :cond_6
    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    if-ne v0, v1, :cond_7

    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->month:I

    if-ne v0, v1, :cond_7

    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->day:I

    if-eq v0, v1, :cond_7

    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->hour:I

    if-ne v0, v1, :cond_7

    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->minute:I

    if-ne v0, v1, :cond_7

    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->second:I

    if-ne v0, v1, :cond_7

    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->GDAY:Lmf/javax/xml/namespace/QName;

    return-object v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "#getXMLSchemaType() :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const-string v3, "InvalidXGCFields"

    invoke-static {v2, v3, v2}, Lmf/org/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getYear()I
    .locals 1

    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getTimezone()I

    move-result v0

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getTimezone()I

    move-result v0

    invoke-direct {p0, p0, v0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->normalizeToTimezone(Lmf/javax/xml/datatype/XMLGregorianCalendar;I)Lmf/javax/xml/datatype/XMLGregorianCalendar;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, p0

    :goto_0
    invoke-virtual {v0}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->getYear()I

    move-result v1

    invoke-virtual {v0}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->getMonth()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->getDay()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->getHour()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->getMinute()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->getSecond()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public isValid()Z
    .locals 5

    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->month:I

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    iget v3, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->day:I

    if-eq v3, v1, :cond_2

    iget v4, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    if-eq v4, v1, :cond_1

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->eon:Ljava/math/BigInteger;

    if-nez v1, :cond_0

    invoke-static {v4, v0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->maximumDayInMonthFor(II)I

    move-result v0

    if-le v3, v0, :cond_2

    return v2

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getEonAndYear()Ljava/math/BigInteger;

    move-result-object v0

    iget v1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->month:I

    invoke-static {v0, v1}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->maximumDayInMonthFor(Ljava/math/BigInteger;I)I

    move-result v0

    if-le v3, v0, :cond_2

    return v2

    :cond_1
    const/16 v1, 0x7d0

    invoke-static {v1, v0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->maximumDayInMonthFor(II)I

    move-result v0

    if-le v3, v0, :cond_2

    return v2

    :cond_2
    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->hour:I

    const/16 v1, 0x18

    if-ne v0, v1, :cond_4

    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->minute:I

    if-nez v0, :cond_3

    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->second:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->fractionalSecond:Ljava/math/BigDecimal;

    if-eqz v0, :cond_4

    sget-object v1, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->DECIMAL_ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    return v2

    :cond_4
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->eon:Ljava/math/BigInteger;

    if-nez v0, :cond_5

    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    if-nez v0, :cond_5

    return v2

    :cond_5
    const/4 v0, 0x1

    return v0
.end method

.method public normalize()Lmf/javax/xml/datatype/XMLGregorianCalendar;
    .locals 3

    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->timezone:I

    invoke-direct {p0, p0, v0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->normalizeToTimezone(Lmf/javax/xml/datatype/XMLGregorianCalendar;I)Lmf/javax/xml/datatype/XMLGregorianCalendar;

    move-result-object v0

    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getTimezone()I

    move-result v1

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_0

    invoke-virtual {v0, v2}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->setTimezone(I)V

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getMillisecond()I

    move-result v1

    if-ne v1, v2, :cond_1

    invoke-virtual {v0, v2}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->setMillisecond(I)V

    :cond_1
    return-object v0
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_eon:Ljava/math/BigInteger;

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->eon:Ljava/math/BigInteger;

    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_year:I

    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_month:I

    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->month:I

    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_day:I

    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->day:I

    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_hour:I

    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->hour:I

    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_minute:I

    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->minute:I

    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_second:I

    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->second:I

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_fracSeconds:Ljava/math/BigDecimal;

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->fractionalSecond:Ljava/math/BigDecimal;

    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_timezone:I

    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->timezone:I

    return-void
.end method

.method public setDay(I)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->checkFieldValueConstraint(II)V

    iput p1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->day:I

    return-void
.end method

.method public setFractionalSecond(Ljava/math/BigDecimal;)V
    .locals 4

    if-eqz p1, :cond_1

    sget-object v0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->DECIMAL_ZERO:Ljava/math/BigDecimal;

    invoke-virtual {p1, v0}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-ltz v0, :cond_0

    sget-object v0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->DECIMAL_ONE:Ljava/math/BigDecimal;

    invoke-virtual {p1, v0}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "InvalidFractional"

    invoke-static {v1, p1, v2}, Lmf/org/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iput-object p1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->fractionalSecond:Ljava/math/BigDecimal;

    return-void
.end method

.method public setHour(I)V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->checkFieldValueConstraint(II)V

    iput p1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->hour:I

    return-void
.end method

.method public setMillisecond(I)V
    .locals 2

    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->fractionalSecond:Ljava/math/BigDecimal;

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    invoke-direct {p0, v0, p1}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->checkFieldValueConstraint(II)V

    int-to-long v0, p1

    const/4 p1, 0x3

    invoke-static {v0, v1, p1}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object p1

    iput-object p1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->fractionalSecond:Ljava/math/BigDecimal;

    :goto_0
    return-void
.end method

.method public setMinute(I)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->checkFieldValueConstraint(II)V

    iput p1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->minute:I

    return-void
.end method

.method public setMonth(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->checkFieldValueConstraint(II)V

    iput p1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->month:I

    return-void
.end method

.method public setSecond(I)V
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, v0, p1}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->checkFieldValueConstraint(II)V

    iput p1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->second:I

    return-void
.end method

.method public setTime(III)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setTime(IIILjava/math/BigDecimal;)V

    return-void
.end method

.method public setTime(IIII)V
    .locals 0

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setHour(I)V

    invoke-virtual {p0, p2}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setMinute(I)V

    invoke-virtual {p0, p3}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setSecond(I)V

    invoke-virtual {p0, p4}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setMillisecond(I)V

    return-void
.end method

.method public setTime(IIILjava/math/BigDecimal;)V
    .locals 0

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setHour(I)V

    invoke-virtual {p0, p2}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setMinute(I)V

    invoke-virtual {p0, p3}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setSecond(I)V

    invoke-virtual {p0, p4}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setFractionalSecond(Ljava/math/BigDecimal;)V

    return-void
.end method

.method public setTimezone(I)V
    .locals 1

    const/4 v0, 0x7

    invoke-direct {p0, v0, p1}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->checkFieldValueConstraint(II)V

    iput p1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->timezone:I

    return-void
.end method

.method public setYear(I)V
    .locals 3

    const/4 v0, 0x0

    const/high16 v1, -0x80000000

    if-ne p1, v1, :cond_0

    iput v1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->eon:Ljava/math/BigInteger;

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const v2, 0x3b9aca00

    if-ge v1, v2, :cond_1

    iput p1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->eon:Ljava/math/BigInteger;

    goto :goto_0

    :cond_1
    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    sget-object v0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->BILLION_B:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    iput v1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setEon(Ljava/math/BigInteger;)V

    :goto_0
    return-void
.end method

.method public setYear(Ljava/math/BigInteger;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->eon:Ljava/math/BigInteger;

    const/high16 p1, -0x80000000

    iput p1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    goto :goto_0

    :cond_0
    sget-object v0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->BILLION_B:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    iput v1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setEon(Ljava/math/BigInteger;)V

    :goto_0
    return-void
.end method

.method public toGregorianCalendar()Ljava/util/GregorianCalendar;
    .locals 7

    const/high16 v0, -0x80000000

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getTimeZone(I)Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    new-instance v3, Ljava/util/GregorianCalendar;

    invoke-direct {v3, v1, v2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    invoke-virtual {v3}, Ljava/util/GregorianCalendar;->clear()V

    sget-object v1, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->PURE_GREGORIAN_CHANGE:Ljava/util/Date;

    invoke-virtual {v3, v1}, Ljava/util/GregorianCalendar;->setGregorianChange(Ljava/util/Date;)V

    iget v1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    const/4 v2, 0x1

    if-eq v1, v0, :cond_3

    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->eon:Ljava/math/BigInteger;

    const/4 v5, 0x0

    if-nez v4, :cond_1

    if-gez v1, :cond_0

    move v1, v5

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v3, v5, v1}, Ljava/util/GregorianCalendar;->set(II)V

    iget v1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-virtual {v3, v2, v1}, Ljava/util/GregorianCalendar;->set(II)V

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getEonAndYear()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->signum()I

    move-result v4

    const/4 v6, -0x1

    if-ne v4, v6, :cond_2

    move v4, v5

    goto :goto_1

    :cond_2
    move v4, v2

    :goto_1
    invoke-virtual {v3, v5, v4}, Ljava/util/GregorianCalendar;->set(II)V

    invoke-virtual {v1}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    invoke-virtual {v3, v2, v1}, Ljava/util/GregorianCalendar;->set(II)V

    :cond_3
    :goto_2
    iget v1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->month:I

    if-eq v1, v0, :cond_4

    const/4 v4, 0x2

    sub-int/2addr v1, v2

    invoke-virtual {v3, v4, v1}, Ljava/util/GregorianCalendar;->set(II)V

    :cond_4
    iget v1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->day:I

    if-eq v1, v0, :cond_5

    const/4 v2, 0x5

    invoke-virtual {v3, v2, v1}, Ljava/util/GregorianCalendar;->set(II)V

    :cond_5
    iget v1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->hour:I

    if-eq v1, v0, :cond_6

    const/16 v2, 0xb

    invoke-virtual {v3, v2, v1}, Ljava/util/GregorianCalendar;->set(II)V

    :cond_6
    iget v1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->minute:I

    if-eq v1, v0, :cond_7

    const/16 v2, 0xc

    invoke-virtual {v3, v2, v1}, Ljava/util/GregorianCalendar;->set(II)V

    :cond_7
    iget v1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->second:I

    if-eq v1, v0, :cond_8

    const/16 v0, 0xd

    invoke-virtual {v3, v0, v1}, Ljava/util/GregorianCalendar;->set(II)V

    :cond_8
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->fractionalSecond:Ljava/math/BigDecimal;

    if-eqz v0, :cond_9

    const/16 v0, 0xe

    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getMillisecond()I

    move-result v1

    invoke-virtual {v3, v0, v1}, Ljava/util/GregorianCalendar;->set(II)V

    :cond_9
    return-object v3
.end method

.method public toGregorianCalendar(Ljava/util/TimeZone;Ljava/util/Locale;Lmf/javax/xml/datatype/XMLGregorianCalendar;)Ljava/util/GregorianCalendar;
    .locals 5

    const/high16 v0, -0x80000000

    if-nez p1, :cond_1

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->getTimezone()I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getTimeZone(I)Ljava/util/TimeZone;

    move-result-object p1

    :cond_1
    if-nez p2, :cond_2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    :cond_2
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1, p1, p2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    invoke-virtual {v1}, Ljava/util/GregorianCalendar;->clear()V

    sget-object p1, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->PURE_GREGORIAN_CHANGE:Ljava/util/Date;

    invoke-virtual {v1, p1}, Ljava/util/GregorianCalendar;->setGregorianChange(Ljava/util/Date;)V

    iget p1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    const/4 p2, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v0, :cond_6

    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->eon:Ljava/math/BigInteger;

    if-nez v4, :cond_4

    if-gez p1, :cond_3

    move p1, v2

    goto :goto_1

    :cond_3
    move p1, v3

    :goto_1
    invoke-virtual {v1, v2, p1}, Ljava/util/GregorianCalendar;->set(II)V

    iget p1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-virtual {v1, v3, p1}, Ljava/util/GregorianCalendar;->set(II)V

    goto :goto_5

    :cond_4
    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getEonAndYear()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v4

    if-ne v4, p2, :cond_5

    move p2, v2

    goto :goto_2

    :cond_5
    move p2, v3

    :goto_2
    invoke-virtual {v1, v2, p2}, Ljava/util/GregorianCalendar;->set(II)V

    invoke-virtual {p1}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    invoke-virtual {v1, v3, p1}, Ljava/util/GregorianCalendar;->set(II)V

    goto :goto_5

    :cond_6
    if-eqz p3, :cond_a

    invoke-virtual {p3}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->getYear()I

    move-result p1

    if-eq p1, v0, :cond_a

    invoke-virtual {p3}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->getEon()Ljava/math/BigInteger;

    move-result-object v4

    if-nez v4, :cond_8

    if-gez p1, :cond_7

    move p2, v2

    goto :goto_3

    :cond_7
    move p2, v3

    :goto_3
    invoke-virtual {v1, v2, p2}, Ljava/util/GregorianCalendar;->set(II)V

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-virtual {v1, v3, p1}, Ljava/util/GregorianCalendar;->set(II)V

    goto :goto_5

    :cond_8
    invoke-virtual {p3}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->getEonAndYear()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v4

    if-ne v4, p2, :cond_9

    move p2, v2

    goto :goto_4

    :cond_9
    move p2, v3

    :goto_4
    invoke-virtual {v1, v2, p2}, Ljava/util/GregorianCalendar;->set(II)V

    invoke-virtual {p1}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    invoke-virtual {v1, v3, p1}, Ljava/util/GregorianCalendar;->set(II)V

    :cond_a
    :goto_5
    iget p1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->month:I

    const/4 p2, 0x2

    if-eq p1, v0, :cond_b

    sub-int/2addr p1, v3

    invoke-virtual {v1, p2, p1}, Ljava/util/GregorianCalendar;->set(II)V

    goto :goto_7

    :cond_b
    if-eqz p3, :cond_c

    invoke-virtual {p3}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->getMonth()I

    move-result p1

    goto :goto_6

    :cond_c
    move p1, v0

    :goto_6
    if-eq p1, v0, :cond_d

    sub-int/2addr p1, v3

    invoke-virtual {v1, p2, p1}, Ljava/util/GregorianCalendar;->set(II)V

    :cond_d
    :goto_7
    iget p1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->day:I

    const/4 p2, 0x5

    if-eq p1, v0, :cond_e

    invoke-virtual {v1, p2, p1}, Ljava/util/GregorianCalendar;->set(II)V

    goto :goto_9

    :cond_e
    if-eqz p3, :cond_f

    invoke-virtual {p3}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->getDay()I

    move-result p1

    goto :goto_8

    :cond_f
    move p1, v0

    :goto_8
    if-eq p1, v0, :cond_10

    invoke-virtual {v1, p2, p1}, Ljava/util/GregorianCalendar;->set(II)V

    :cond_10
    :goto_9
    iget p1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->hour:I

    const/16 p2, 0xb

    if-eq p1, v0, :cond_11

    invoke-virtual {v1, p2, p1}, Ljava/util/GregorianCalendar;->set(II)V

    goto :goto_b

    :cond_11
    if-eqz p3, :cond_12

    invoke-virtual {p3}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->getHour()I

    move-result p1

    goto :goto_a

    :cond_12
    move p1, v0

    :goto_a
    if-eq p1, v0, :cond_13

    invoke-virtual {v1, p2, p1}, Ljava/util/GregorianCalendar;->set(II)V

    :cond_13
    :goto_b
    iget p1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->minute:I

    const/16 p2, 0xc

    if-eq p1, v0, :cond_14

    invoke-virtual {v1, p2, p1}, Ljava/util/GregorianCalendar;->set(II)V

    goto :goto_d

    :cond_14
    if-eqz p3, :cond_15

    invoke-virtual {p3}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->getMinute()I

    move-result p1

    goto :goto_c

    :cond_15
    move p1, v0

    :goto_c
    if-eq p1, v0, :cond_16

    invoke-virtual {v1, p2, p1}, Ljava/util/GregorianCalendar;->set(II)V

    :cond_16
    :goto_d
    iget p1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->second:I

    const/16 p2, 0xd

    if-eq p1, v0, :cond_17

    invoke-virtual {v1, p2, p1}, Ljava/util/GregorianCalendar;->set(II)V

    goto :goto_f

    :cond_17
    if-eqz p3, :cond_18

    invoke-virtual {p3}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->getSecond()I

    move-result p1

    goto :goto_e

    :cond_18
    move p1, v0

    :goto_e
    if-eq p1, v0, :cond_19

    invoke-virtual {v1, p2, p1}, Ljava/util/GregorianCalendar;->set(II)V

    :cond_19
    :goto_f
    iget-object p1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->fractionalSecond:Ljava/math/BigDecimal;

    const/16 p2, 0xe

    if-eqz p1, :cond_1a

    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getMillisecond()I

    move-result p1

    invoke-virtual {v1, p2, p1}, Ljava/util/GregorianCalendar;->set(II)V

    goto :goto_11

    :cond_1a
    if-eqz p3, :cond_1b

    invoke-virtual {p3}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->getFractionalSecond()Ljava/math/BigDecimal;

    move-result-object p1

    goto :goto_10

    :cond_1b
    const/4 p1, 0x0

    :goto_10
    if-eqz p1, :cond_1c

    invoke-virtual {p3}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->getMillisecond()I

    move-result p1

    invoke-virtual {v1, p2, p1}, Ljava/util/GregorianCalendar;->set(II)V

    :cond_1c
    :goto_11
    return-object v1
.end method

.method public toXMLFormat()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getXMLSchemaType()Lmf/javax/xml/namespace/QName;

    move-result-object v0

    sget-object v1, Lmf/javax/xml/datatype/DatatypeConstants;->DATETIME:Lmf/javax/xml/namespace/QName;

    if-ne v0, v1, :cond_0

    const-string v0, "%Y-%M-%DT%h:%m:%s%z"

    goto :goto_0

    :cond_0
    sget-object v1, Lmf/javax/xml/datatype/DatatypeConstants;->DATE:Lmf/javax/xml/namespace/QName;

    if-ne v0, v1, :cond_1

    const-string v0, "%Y-%M-%D%z"

    goto :goto_0

    :cond_1
    sget-object v1, Lmf/javax/xml/datatype/DatatypeConstants;->TIME:Lmf/javax/xml/namespace/QName;

    if-ne v0, v1, :cond_2

    const-string v0, "%h:%m:%s%z"

    goto :goto_0

    :cond_2
    sget-object v1, Lmf/javax/xml/datatype/DatatypeConstants;->GMONTH:Lmf/javax/xml/namespace/QName;

    if-ne v0, v1, :cond_3

    const-string v0, "--%M--%z"

    goto :goto_0

    :cond_3
    sget-object v1, Lmf/javax/xml/datatype/DatatypeConstants;->GDAY:Lmf/javax/xml/namespace/QName;

    if-ne v0, v1, :cond_4

    const-string v0, "---%D%z"

    goto :goto_0

    :cond_4
    sget-object v1, Lmf/javax/xml/datatype/DatatypeConstants;->GYEAR:Lmf/javax/xml/namespace/QName;

    if-ne v0, v1, :cond_5

    const-string v0, "%Y%z"

    goto :goto_0

    :cond_5
    sget-object v1, Lmf/javax/xml/datatype/DatatypeConstants;->GYEARMONTH:Lmf/javax/xml/namespace/QName;

    if-ne v0, v1, :cond_6

    const-string v0, "%Y-%M%z"

    goto :goto_0

    :cond_6
    sget-object v1, Lmf/javax/xml/datatype/DatatypeConstants;->GMONTHDAY:Lmf/javax/xml/namespace/QName;

    if-ne v0, v1, :cond_7

    const-string v0, "--%M-%D%z"

    goto :goto_0

    :cond_7
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
