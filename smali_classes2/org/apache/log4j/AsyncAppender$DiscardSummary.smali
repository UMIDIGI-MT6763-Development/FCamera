.class final Lorg/apache/log4j/AsyncAppender$DiscardSummary;
.super Ljava/lang/Object;
.source "AsyncAppender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/log4j/AsyncAppender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DiscardSummary"
.end annotation


# instance fields
.field private count:I

.field private maxEvent:Lorg/apache/log4j/spi/LoggingEvent;


# direct methods
.method public constructor <init>(Lorg/apache/log4j/spi/LoggingEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/log4j/AsyncAppender$DiscardSummary;->maxEvent:Lorg/apache/log4j/spi/LoggingEvent;

    const/4 p1, 0x1

    iput p1, p0, Lorg/apache/log4j/AsyncAppender$DiscardSummary;->count:I

    return-void
.end method


# virtual methods
.method public add(Lorg/apache/log4j/spi/LoggingEvent;)V
    .locals 2

    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getLevel()Lorg/apache/log4j/Level;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/log4j/Level;->toInt()I

    move-result v0

    iget-object v1, p0, Lorg/apache/log4j/AsyncAppender$DiscardSummary;->maxEvent:Lorg/apache/log4j/spi/LoggingEvent;

    invoke-virtual {v1}, Lorg/apache/log4j/spi/LoggingEvent;->getLevel()Lorg/apache/log4j/Level;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/log4j/Level;->toInt()I

    move-result v1

    if-le v0, v1, :cond_0

    iput-object p1, p0, Lorg/apache/log4j/AsyncAppender$DiscardSummary;->maxEvent:Lorg/apache/log4j/spi/LoggingEvent;

    :cond_0
    iget p1, p0, Lorg/apache/log4j/AsyncAppender$DiscardSummary;->count:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/log4j/AsyncAppender$DiscardSummary;->count:I

    return-void
.end method

.method public createEvent()Lorg/apache/log4j/spi/LoggingEvent;
    .locals 10

    const-string v0, "Discarded {0} messages due to full event buffer including: {1}"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/Integer;

    iget v3, p0, Lorg/apache/log4j/AsyncAppender$DiscardSummary;->count:I

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lorg/apache/log4j/AsyncAppender$DiscardSummary;->maxEvent:Lorg/apache/log4j/spi/LoggingEvent;

    invoke-virtual {v2}, Lorg/apache/log4j/spi/LoggingEvent;->getMessage()Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    new-instance v0, Lorg/apache/log4j/spi/LoggingEvent;

    const-string v5, "org.apache.log4j.AsyncAppender.DONT_REPORT_LOCATION"

    iget-object v1, p0, Lorg/apache/log4j/AsyncAppender$DiscardSummary;->maxEvent:Lorg/apache/log4j/spi/LoggingEvent;

    invoke-virtual {v1}, Lorg/apache/log4j/spi/LoggingEvent;->getLoggerName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/log4j/Logger;->getLogger(Ljava/lang/String;)Lorg/apache/log4j/Logger;

    move-result-object v6

    iget-object v1, p0, Lorg/apache/log4j/AsyncAppender$DiscardSummary;->maxEvent:Lorg/apache/log4j/spi/LoggingEvent;

    invoke-virtual {v1}, Lorg/apache/log4j/spi/LoggingEvent;->getLevel()Lorg/apache/log4j/Level;

    move-result-object v7

    const/4 v9, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lorg/apache/log4j/spi/LoggingEvent;-><init>(Ljava/lang/String;Lorg/apache/log4j/Category;Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-object v0
.end method
