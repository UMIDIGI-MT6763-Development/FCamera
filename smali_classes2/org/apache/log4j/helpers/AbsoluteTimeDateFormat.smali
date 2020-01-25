.class public Lorg/apache/log4j/helpers/AbsoluteTimeDateFormat;
.super Ljava/text/DateFormat;
.source "AbsoluteTimeDateFormat.java"


# static fields
.field public static final ABS_TIME_DATE_FORMAT:Ljava/lang/String; = "ABSOLUTE"

.field public static final DATE_AND_TIME_DATE_FORMAT:Ljava/lang/String; = "DATE"

.field public static final ISO8601_DATE_FORMAT:Ljava/lang/String; = "ISO8601"

.field private static previousTime:J = 0x0L

.field private static previousTimeWithoutMillis:[C = null

.field private static final serialVersionUID:J = -0x5657ec95299578eL


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [C

    sput-object v0, Lorg/apache/log4j/helpers/AbsoluteTimeDateFormat;->previousTimeWithoutMillis:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/text/DateFormat;-><init>()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/log4j/helpers/AbsoluteTimeDateFormat;->setCalendar(Ljava/util/Calendar;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/TimeZone;)V
    .locals 0

    invoke-direct {p0}, Ljava/text/DateFormat;-><init>()V

    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/log4j/helpers/AbsoluteTimeDateFormat;->setCalendar(Ljava/util/Calendar;)V

    return-void
.end method


# virtual methods
.method public format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 8

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    rem-long v2, v0, v2

    long-to-int p3, v2

    int-to-long v2, p3

    sub-long/2addr v0, v2

    sget-wide v2, Lorg/apache/log4j/helpers/AbsoluteTimeDateFormat;->previousTime:J

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    const/16 v4, 0xa

    const/16 v5, 0x30

    if-nez v2, :cond_1

    sget-object v2, Lorg/apache/log4j/helpers/AbsoluteTimeDateFormat;->previousTimeWithoutMillis:[C

    aget-char v6, v2, v3

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v2, p0, Lorg/apache/log4j/helpers/AbsoluteTimeDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v2, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    iget-object v2, p0, Lorg/apache/log4j/helpers/AbsoluteTimeDateFormat;->calendar:Ljava/util/Calendar;

    const/16 v6, 0xb

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ge v2, v4, :cond_2

    invoke-virtual {p2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_2
    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const/16 v2, 0x3a

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v6, p0, Lorg/apache/log4j/helpers/AbsoluteTimeDateFormat;->calendar:Ljava/util/Calendar;

    const/16 v7, 0xc

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-ge v6, v4, :cond_3

    invoke-virtual {p2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_3
    invoke-virtual {p2, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/apache/log4j/helpers/AbsoluteTimeDateFormat;->calendar:Ljava/util/Calendar;

    const/16 v6, 0xd

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ge v2, v4, :cond_4

    invoke-virtual {p2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_4
    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const/16 v2, 0x2c

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    sget-object v6, Lorg/apache/log4j/helpers/AbsoluteTimeDateFormat;->previousTimeWithoutMillis:[C

    invoke-virtual {p2, p1, v2, v6, v3}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    sput-wide v0, Lorg/apache/log4j/helpers/AbsoluteTimeDateFormat;->previousTime:J

    :goto_1
    const/16 p1, 0x64

    if-ge p3, p1, :cond_5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_5
    if-ge p3, v4, :cond_6

    invoke-virtual {p2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_6
    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    return-object p2
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
