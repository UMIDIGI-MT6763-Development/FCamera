.class Lorg/apache/log4j/RollingCalendar;
.super Ljava/util/GregorianCalendar;
.source "DailyRollingFileAppender.java"


# static fields
.field private static final serialVersionUID:J = -0x3168d6e1c54238a1L


# instance fields
.field type:I


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/util/GregorianCalendar;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/log4j/RollingCalendar;->type:I

    return-void
.end method

.method constructor <init>(Ljava/util/TimeZone;Ljava/util/Locale;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    const/4 p1, -0x1

    iput p1, p0, Lorg/apache/log4j/RollingCalendar;->type:I

    return-void
.end method


# virtual methods
.method public getNextCheckDate(Ljava/util/Date;)Ljava/util/Date;
    .locals 7

    invoke-virtual {p0, p1}, Lorg/apache/log4j/RollingCalendar;->setTime(Ljava/util/Date;)V

    iget p1, p0, Lorg/apache/log4j/RollingCalendar;->type:I

    const/4 v0, 0x5

    const/16 v1, 0xe

    const/16 v2, 0xd

    const/16 v3, 0xb

    const/4 v4, 0x1

    const/16 v5, 0xc

    const/4 v6, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unknown periodicity type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-virtual {p0, v0, v4}, Lorg/apache/log4j/RollingCalendar;->set(II)V

    invoke-virtual {p0, v3, v6}, Lorg/apache/log4j/RollingCalendar;->set(II)V

    invoke-virtual {p0, v5, v6}, Lorg/apache/log4j/RollingCalendar;->set(II)V

    invoke-virtual {p0, v2, v6}, Lorg/apache/log4j/RollingCalendar;->set(II)V

    invoke-virtual {p0, v1, v6}, Lorg/apache/log4j/RollingCalendar;->set(II)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1, v4}, Lorg/apache/log4j/RollingCalendar;->add(II)V

    goto :goto_0

    :pswitch_1
    const/4 p1, 0x7

    invoke-virtual {p0}, Lorg/apache/log4j/RollingCalendar;->getFirstDayOfWeek()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/log4j/RollingCalendar;->set(II)V

    invoke-virtual {p0, v3, v6}, Lorg/apache/log4j/RollingCalendar;->set(II)V

    invoke-virtual {p0, v5, v6}, Lorg/apache/log4j/RollingCalendar;->set(II)V

    invoke-virtual {p0, v2, v6}, Lorg/apache/log4j/RollingCalendar;->set(II)V

    invoke-virtual {p0, v1, v6}, Lorg/apache/log4j/RollingCalendar;->set(II)V

    const/4 p1, 0x3

    invoke-virtual {p0, p1, v4}, Lorg/apache/log4j/RollingCalendar;->add(II)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, v3, v6}, Lorg/apache/log4j/RollingCalendar;->set(II)V

    invoke-virtual {p0, v5, v6}, Lorg/apache/log4j/RollingCalendar;->set(II)V

    invoke-virtual {p0, v2, v6}, Lorg/apache/log4j/RollingCalendar;->set(II)V

    invoke-virtual {p0, v1, v6}, Lorg/apache/log4j/RollingCalendar;->set(II)V

    invoke-virtual {p0, v0, v4}, Lorg/apache/log4j/RollingCalendar;->add(II)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0, v5, v6}, Lorg/apache/log4j/RollingCalendar;->set(II)V

    invoke-virtual {p0, v2, v6}, Lorg/apache/log4j/RollingCalendar;->set(II)V

    invoke-virtual {p0, v1, v6}, Lorg/apache/log4j/RollingCalendar;->set(II)V

    invoke-virtual {p0, v3}, Lorg/apache/log4j/RollingCalendar;->get(I)I

    move-result p1

    if-ge p1, v5, :cond_0

    invoke-virtual {p0, v3, v5}, Lorg/apache/log4j/RollingCalendar;->set(II)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v3, v6}, Lorg/apache/log4j/RollingCalendar;->set(II)V

    invoke-virtual {p0, v0, v4}, Lorg/apache/log4j/RollingCalendar;->add(II)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0, v5, v6}, Lorg/apache/log4j/RollingCalendar;->set(II)V

    invoke-virtual {p0, v2, v6}, Lorg/apache/log4j/RollingCalendar;->set(II)V

    invoke-virtual {p0, v1, v6}, Lorg/apache/log4j/RollingCalendar;->set(II)V

    invoke-virtual {p0, v3, v4}, Lorg/apache/log4j/RollingCalendar;->add(II)V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0, v2, v6}, Lorg/apache/log4j/RollingCalendar;->set(II)V

    invoke-virtual {p0, v1, v6}, Lorg/apache/log4j/RollingCalendar;->set(II)V

    invoke-virtual {p0, v5, v4}, Lorg/apache/log4j/RollingCalendar;->add(II)V

    :goto_0
    invoke-virtual {p0}, Lorg/apache/log4j/RollingCalendar;->getTime()Ljava/util/Date;

    move-result-object p1

    return-object p1

    nop

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

.method public getNextCheckMillis(Ljava/util/Date;)J
    .locals 2

    invoke-virtual {p0, p1}, Lorg/apache/log4j/RollingCalendar;->getNextCheckDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method setType(I)V
    .locals 0

    iput p1, p0, Lorg/apache/log4j/RollingCalendar;->type:I

    return-void
.end method
