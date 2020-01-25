.class public Lorg/apache/log4j/helpers/PatternParser;
.super Ljava/lang/Object;
.source "PatternParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/log4j/helpers/PatternParser$CategoryPatternConverter;,
        Lorg/apache/log4j/helpers/PatternParser$ClassNamePatternConverter;,
        Lorg/apache/log4j/helpers/PatternParser$NamedPatternConverter;,
        Lorg/apache/log4j/helpers/PatternParser$LocationPatternConverter;,
        Lorg/apache/log4j/helpers/PatternParser$MDCPatternConverter;,
        Lorg/apache/log4j/helpers/PatternParser$DatePatternConverter;,
        Lorg/apache/log4j/helpers/PatternParser$LiteralPatternConverter;,
        Lorg/apache/log4j/helpers/PatternParser$BasicPatternConverter;
    }
.end annotation


# static fields
.field static final CLASS_LOCATION_CONVERTER:I = 0x3ea

.field private static final CONVERTER_STATE:I = 0x1

.field private static final DOT_STATE:I = 0x3

.field private static final ESCAPE_CHAR:C = '%'

.field static final FILE_LOCATION_CONVERTER:I = 0x3ec

.field static final FULL_LOCATION_CONVERTER:I = 0x3e8

.field static final LEVEL_CONVERTER:I = 0x7d2

.field static final LINE_LOCATION_CONVERTER:I = 0x3eb

.field private static final LITERAL_STATE:I = 0x0

.field private static final MAX_STATE:I = 0x5

.field static final MESSAGE_CONVERTER:I = 0x7d4

.field static final METHOD_LOCATION_CONVERTER:I = 0x3e9

.field private static final MIN_STATE:I = 0x4

.field static final NDC_CONVERTER:I = 0x7d3

.field static final RELATIVE_TIME_CONVERTER:I = 0x7d0

.field static final THREAD_CONVERTER:I = 0x7d1

.field static synthetic class$java$text$DateFormat:Ljava/lang/Class;


# instance fields
.field protected currentLiteral:Ljava/lang/StringBuffer;

.field protected formattingInfo:Lorg/apache/log4j/helpers/FormattingInfo;

.field head:Lorg/apache/log4j/helpers/PatternConverter;

.field protected i:I

.field protected pattern:Ljava/lang/String;

.field protected patternLength:I

.field state:I

.field tail:Lorg/apache/log4j/helpers/PatternConverter;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/apache/log4j/helpers/PatternParser;->currentLiteral:Ljava/lang/StringBuffer;

    new-instance v0, Lorg/apache/log4j/helpers/FormattingInfo;

    invoke-direct {v0}, Lorg/apache/log4j/helpers/FormattingInfo;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/helpers/PatternParser;->formattingInfo:Lorg/apache/log4j/helpers/FormattingInfo;

    iput-object p1, p0, Lorg/apache/log4j/helpers/PatternParser;->pattern:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Lorg/apache/log4j/helpers/PatternParser;->patternLength:I

    const/4 p1, 0x0

    iput p1, p0, Lorg/apache/log4j/helpers/PatternParser;->state:I

    return-void
.end method

.method private addToList(Lorg/apache/log4j/helpers/PatternConverter;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/log4j/helpers/PatternParser;->head:Lorg/apache/log4j/helpers/PatternConverter;

    if-nez v0, :cond_0

    iput-object p1, p0, Lorg/apache/log4j/helpers/PatternParser;->tail:Lorg/apache/log4j/helpers/PatternConverter;

    iput-object p1, p0, Lorg/apache/log4j/helpers/PatternParser;->head:Lorg/apache/log4j/helpers/PatternConverter;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/log4j/helpers/PatternParser;->tail:Lorg/apache/log4j/helpers/PatternConverter;

    iput-object p1, v0, Lorg/apache/log4j/helpers/PatternConverter;->next:Lorg/apache/log4j/helpers/PatternConverter;

    iput-object p1, p0, Lorg/apache/log4j/helpers/PatternParser;->tail:Lorg/apache/log4j/helpers/PatternConverter;

    :goto_0
    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v0}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method protected addConverter(Lorg/apache/log4j/helpers/PatternConverter;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/log4j/helpers/PatternParser;->currentLiteral:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    invoke-direct {p0, p1}, Lorg/apache/log4j/helpers/PatternParser;->addToList(Lorg/apache/log4j/helpers/PatternConverter;)V

    iput v1, p0, Lorg/apache/log4j/helpers/PatternParser;->state:I

    iget-object p1, p0, Lorg/apache/log4j/helpers/PatternParser;->formattingInfo:Lorg/apache/log4j/helpers/FormattingInfo;

    invoke-virtual {p1}, Lorg/apache/log4j/helpers/FormattingInfo;->reset()V

    return-void
.end method

.method protected extractOption()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lorg/apache/log4j/helpers/PatternParser;->i:I

    iget v1, p0, Lorg/apache/log4j/helpers/PatternParser;->patternLength:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/apache/log4j/helpers/PatternParser;->pattern:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x7b

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/log4j/helpers/PatternParser;->pattern:Ljava/lang/String;

    const/16 v1, 0x7d

    iget v2, p0, Lorg/apache/log4j/helpers/PatternParser;->i:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    iget v1, p0, Lorg/apache/log4j/helpers/PatternParser;->i:I

    if-le v0, v1, :cond_0

    iget-object v2, p0, Lorg/apache/log4j/helpers/PatternParser;->pattern:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/log4j/helpers/PatternParser;->i:I

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected extractPrecisionOption()I
    .locals 6

    invoke-virtual {p0}, Lorg/apache/log4j/helpers/PatternParser;->extractOption()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    if-gtz v2, :cond_0

    :try_start_1
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Precision option ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, ") isn\'t a positive integer."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :catch_1
    move-exception v2

    move-object v5, v2

    move v2, v1

    move-object v1, v5

    :goto_0
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Category option \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "\" not a decimal integer."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v1, v2

    :cond_1
    :goto_1
    return v1
.end method

.method protected finalizeConverter(C)V
    .locals 4

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Unexpected char ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string p1, "] at position "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget p1, p0, Lorg/apache/log4j/helpers/PatternParser;->i:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p1, " in conversion patterrn."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;)V

    new-instance p1, Lorg/apache/log4j/helpers/PatternParser$LiteralPatternConverter;

    iget-object v1, p0, Lorg/apache/log4j/helpers/PatternParser;->currentLiteral:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Lorg/apache/log4j/helpers/PatternParser$LiteralPatternConverter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/log4j/helpers/PatternParser;->currentLiteral:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    goto/16 :goto_1

    :sswitch_0
    new-instance p1, Lorg/apache/log4j/helpers/PatternParser$BasicPatternConverter;

    iget-object v1, p0, Lorg/apache/log4j/helpers/PatternParser;->formattingInfo:Lorg/apache/log4j/helpers/FormattingInfo;

    const/16 v2, 0x7d3

    invoke-direct {p1, v1, v2}, Lorg/apache/log4j/helpers/PatternParser$BasicPatternConverter;-><init>(Lorg/apache/log4j/helpers/FormattingInfo;I)V

    iget-object v1, p0, Lorg/apache/log4j/helpers/PatternParser;->currentLiteral:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    goto/16 :goto_1

    :sswitch_1
    new-instance p1, Lorg/apache/log4j/helpers/PatternParser$BasicPatternConverter;

    iget-object v1, p0, Lorg/apache/log4j/helpers/PatternParser;->formattingInfo:Lorg/apache/log4j/helpers/FormattingInfo;

    const/16 v2, 0x7d1

    invoke-direct {p1, v1, v2}, Lorg/apache/log4j/helpers/PatternParser$BasicPatternConverter;-><init>(Lorg/apache/log4j/helpers/FormattingInfo;I)V

    iget-object v1, p0, Lorg/apache/log4j/helpers/PatternParser;->currentLiteral:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    goto/16 :goto_1

    :sswitch_2
    new-instance p1, Lorg/apache/log4j/helpers/PatternParser$BasicPatternConverter;

    iget-object v1, p0, Lorg/apache/log4j/helpers/PatternParser;->formattingInfo:Lorg/apache/log4j/helpers/FormattingInfo;

    const/16 v2, 0x7d0

    invoke-direct {p1, v1, v2}, Lorg/apache/log4j/helpers/PatternParser$BasicPatternConverter;-><init>(Lorg/apache/log4j/helpers/FormattingInfo;I)V

    iget-object v1, p0, Lorg/apache/log4j/helpers/PatternParser;->currentLiteral:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    goto/16 :goto_1

    :sswitch_3
    new-instance p1, Lorg/apache/log4j/helpers/PatternParser$BasicPatternConverter;

    iget-object v1, p0, Lorg/apache/log4j/helpers/PatternParser;->formattingInfo:Lorg/apache/log4j/helpers/FormattingInfo;

    const/16 v2, 0x7d2

    invoke-direct {p1, v1, v2}, Lorg/apache/log4j/helpers/PatternParser$BasicPatternConverter;-><init>(Lorg/apache/log4j/helpers/FormattingInfo;I)V

    iget-object v1, p0, Lorg/apache/log4j/helpers/PatternParser;->currentLiteral:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    goto/16 :goto_1

    :sswitch_4
    new-instance p1, Lorg/apache/log4j/helpers/PatternParser$BasicPatternConverter;

    iget-object v1, p0, Lorg/apache/log4j/helpers/PatternParser;->formattingInfo:Lorg/apache/log4j/helpers/FormattingInfo;

    const/16 v2, 0x7d4

    invoke-direct {p1, v1, v2}, Lorg/apache/log4j/helpers/PatternParser$BasicPatternConverter;-><init>(Lorg/apache/log4j/helpers/FormattingInfo;I)V

    iget-object v1, p0, Lorg/apache/log4j/helpers/PatternParser;->currentLiteral:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    goto/16 :goto_1

    :sswitch_5
    new-instance p1, Lorg/apache/log4j/helpers/PatternParser$LocationPatternConverter;

    iget-object v1, p0, Lorg/apache/log4j/helpers/PatternParser;->formattingInfo:Lorg/apache/log4j/helpers/FormattingInfo;

    const/16 v2, 0x3e8

    invoke-direct {p1, p0, v1, v2}, Lorg/apache/log4j/helpers/PatternParser$LocationPatternConverter;-><init>(Lorg/apache/log4j/helpers/PatternParser;Lorg/apache/log4j/helpers/FormattingInfo;I)V

    iget-object v1, p0, Lorg/apache/log4j/helpers/PatternParser;->currentLiteral:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    goto/16 :goto_1

    :sswitch_6
    const-string p1, "ISO8601"

    invoke-virtual {p0}, Lorg/apache/log4j/helpers/PatternParser;->extractOption()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object p1, v1

    :cond_0
    const-string v1, "ISO8601"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance p1, Lorg/apache/log4j/helpers/ISO8601DateFormat;

    invoke-direct {p1}, Lorg/apache/log4j/helpers/ISO8601DateFormat;-><init>()V

    goto :goto_0

    :cond_1
    const-string v1, "ABSOLUTE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance p1, Lorg/apache/log4j/helpers/AbsoluteTimeDateFormat;

    invoke-direct {p1}, Lorg/apache/log4j/helpers/AbsoluteTimeDateFormat;-><init>()V

    goto :goto_0

    :cond_2
    const-string v1, "DATE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance p1, Lorg/apache/log4j/helpers/DateTimeDateFormat;

    invoke-direct {p1}, Lorg/apache/log4j/helpers/DateTimeDateFormat;-><init>()V

    goto :goto_0

    :cond_3
    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v1

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Could not instantiate SimpleDateFormat with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p1, "org.apache.log4j.helpers.ISO8601DateFormat"

    sget-object v1, Lorg/apache/log4j/helpers/PatternParser;->class$java$text$DateFormat:Ljava/lang/Class;

    if-nez v1, :cond_4

    const-string v1, "java.text.DateFormat"

    invoke-static {v1}, Lorg/apache/log4j/helpers/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/log4j/helpers/PatternParser;->class$java$text$DateFormat:Ljava/lang/Class;

    :cond_4
    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lorg/apache/log4j/helpers/OptionConverter;->instantiateByClassName(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/text/DateFormat;

    :goto_0
    new-instance v1, Lorg/apache/log4j/helpers/PatternParser$DatePatternConverter;

    iget-object v2, p0, Lorg/apache/log4j/helpers/PatternParser;->formattingInfo:Lorg/apache/log4j/helpers/FormattingInfo;

    invoke-direct {v1, v2, p1}, Lorg/apache/log4j/helpers/PatternParser$DatePatternConverter;-><init>(Lorg/apache/log4j/helpers/FormattingInfo;Ljava/text/DateFormat;)V

    iget-object p1, p0, Lorg/apache/log4j/helpers/PatternParser;->currentLiteral:Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    move-object p1, v1

    goto :goto_1

    :sswitch_7
    new-instance p1, Lorg/apache/log4j/helpers/PatternParser$CategoryPatternConverter;

    iget-object v1, p0, Lorg/apache/log4j/helpers/PatternParser;->formattingInfo:Lorg/apache/log4j/helpers/FormattingInfo;

    invoke-virtual {p0}, Lorg/apache/log4j/helpers/PatternParser;->extractPrecisionOption()I

    move-result v2

    invoke-direct {p1, p0, v1, v2}, Lorg/apache/log4j/helpers/PatternParser$CategoryPatternConverter;-><init>(Lorg/apache/log4j/helpers/PatternParser;Lorg/apache/log4j/helpers/FormattingInfo;I)V

    iget-object v1, p0, Lorg/apache/log4j/helpers/PatternParser;->currentLiteral:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    goto :goto_1

    :sswitch_8
    invoke-virtual {p0}, Lorg/apache/log4j/helpers/PatternParser;->extractOption()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lorg/apache/log4j/helpers/PatternParser$MDCPatternConverter;

    iget-object v2, p0, Lorg/apache/log4j/helpers/PatternParser;->formattingInfo:Lorg/apache/log4j/helpers/FormattingInfo;

    invoke-direct {v1, v2, p1}, Lorg/apache/log4j/helpers/PatternParser$MDCPatternConverter;-><init>(Lorg/apache/log4j/helpers/FormattingInfo;Ljava/lang/String;)V

    iget-object p1, p0, Lorg/apache/log4j/helpers/PatternParser;->currentLiteral:Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    move-object p1, v1

    goto :goto_1

    :sswitch_9
    new-instance p1, Lorg/apache/log4j/helpers/PatternParser$LocationPatternConverter;

    iget-object v1, p0, Lorg/apache/log4j/helpers/PatternParser;->formattingInfo:Lorg/apache/log4j/helpers/FormattingInfo;

    const/16 v2, 0x3e9

    invoke-direct {p1, p0, v1, v2}, Lorg/apache/log4j/helpers/PatternParser$LocationPatternConverter;-><init>(Lorg/apache/log4j/helpers/PatternParser;Lorg/apache/log4j/helpers/FormattingInfo;I)V

    iget-object v1, p0, Lorg/apache/log4j/helpers/PatternParser;->currentLiteral:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    goto :goto_1

    :sswitch_a
    new-instance p1, Lorg/apache/log4j/helpers/PatternParser$LocationPatternConverter;

    iget-object v1, p0, Lorg/apache/log4j/helpers/PatternParser;->formattingInfo:Lorg/apache/log4j/helpers/FormattingInfo;

    const/16 v2, 0x3eb

    invoke-direct {p1, p0, v1, v2}, Lorg/apache/log4j/helpers/PatternParser$LocationPatternConverter;-><init>(Lorg/apache/log4j/helpers/PatternParser;Lorg/apache/log4j/helpers/FormattingInfo;I)V

    iget-object v1, p0, Lorg/apache/log4j/helpers/PatternParser;->currentLiteral:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    goto :goto_1

    :sswitch_b
    new-instance p1, Lorg/apache/log4j/helpers/PatternParser$LocationPatternConverter;

    iget-object v1, p0, Lorg/apache/log4j/helpers/PatternParser;->formattingInfo:Lorg/apache/log4j/helpers/FormattingInfo;

    const/16 v2, 0x3ec

    invoke-direct {p1, p0, v1, v2}, Lorg/apache/log4j/helpers/PatternParser$LocationPatternConverter;-><init>(Lorg/apache/log4j/helpers/PatternParser;Lorg/apache/log4j/helpers/FormattingInfo;I)V

    iget-object v1, p0, Lorg/apache/log4j/helpers/PatternParser;->currentLiteral:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    goto :goto_1

    :sswitch_c
    new-instance p1, Lorg/apache/log4j/helpers/PatternParser$ClassNamePatternConverter;

    iget-object v1, p0, Lorg/apache/log4j/helpers/PatternParser;->formattingInfo:Lorg/apache/log4j/helpers/FormattingInfo;

    invoke-virtual {p0}, Lorg/apache/log4j/helpers/PatternParser;->extractPrecisionOption()I

    move-result v2

    invoke-direct {p1, p0, v1, v2}, Lorg/apache/log4j/helpers/PatternParser$ClassNamePatternConverter;-><init>(Lorg/apache/log4j/helpers/PatternParser;Lorg/apache/log4j/helpers/FormattingInfo;I)V

    iget-object v1, p0, Lorg/apache/log4j/helpers/PatternParser;->currentLiteral:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    :goto_1
    invoke-virtual {p0, p1}, Lorg/apache/log4j/helpers/PatternParser;->addConverter(Lorg/apache/log4j/helpers/PatternConverter;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x43 -> :sswitch_c
        0x46 -> :sswitch_b
        0x4c -> :sswitch_a
        0x4d -> :sswitch_9
        0x58 -> :sswitch_8
        0x63 -> :sswitch_7
        0x64 -> :sswitch_6
        0x6c -> :sswitch_5
        0x6d -> :sswitch_4
        0x70 -> :sswitch_3
        0x72 -> :sswitch_2
        0x74 -> :sswitch_1
        0x78 -> :sswitch_0
    .end sparse-switch
.end method

.method public parse()Lorg/apache/log4j/helpers/PatternConverter;
    .locals 7

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/log4j/helpers/PatternParser;->i:I

    :goto_0
    iget v1, p0, Lorg/apache/log4j/helpers/PatternParser;->i:I

    iget v2, p0, Lorg/apache/log4j/helpers/PatternParser;->patternLength:I

    if-ge v1, v2, :cond_a

    iget-object v2, p0, Lorg/apache/log4j/helpers/PatternParser;->pattern:Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lorg/apache/log4j/helpers/PatternParser;->i:I

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    iget v2, p0, Lorg/apache/log4j/helpers/PatternParser;->state:I

    const/4 v3, 0x3

    const/16 v4, 0x39

    const/4 v5, 0x1

    const/16 v6, 0x30

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lorg/apache/log4j/helpers/PatternParser;->currentLiteral:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    if-lt v1, v6, :cond_0

    if-gt v1, v4, :cond_0

    iget-object v2, p0, Lorg/apache/log4j/helpers/PatternParser;->formattingInfo:Lorg/apache/log4j/helpers/FormattingInfo;

    iget v3, v2, Lorg/apache/log4j/helpers/FormattingInfo;->max:I

    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v1, v1, -0x30

    add-int/2addr v3, v1

    iput v3, v2, Lorg/apache/log4j/helpers/FormattingInfo;->max:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lorg/apache/log4j/helpers/PatternParser;->finalizeConverter(C)V

    iput v0, p0, Lorg/apache/log4j/helpers/PatternParser;->state:I

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lorg/apache/log4j/helpers/PatternParser;->currentLiteral:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    if-lt v1, v6, :cond_1

    if-gt v1, v4, :cond_1

    iget-object v2, p0, Lorg/apache/log4j/helpers/PatternParser;->formattingInfo:Lorg/apache/log4j/helpers/FormattingInfo;

    iget v3, v2, Lorg/apache/log4j/helpers/FormattingInfo;->min:I

    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v1, v1, -0x30

    add-int/2addr v3, v1

    iput v3, v2, Lorg/apache/log4j/helpers/FormattingInfo;->min:I

    goto :goto_0

    :cond_1
    const/16 v2, 0x2e

    if-ne v1, v2, :cond_2

    iput v3, p0, Lorg/apache/log4j/helpers/PatternParser;->state:I

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v1}, Lorg/apache/log4j/helpers/PatternParser;->finalizeConverter(C)V

    goto :goto_0

    :pswitch_3
    iget-object v2, p0, Lorg/apache/log4j/helpers/PatternParser;->currentLiteral:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    if-lt v1, v6, :cond_3

    if-gt v1, v4, :cond_3

    iget-object v2, p0, Lorg/apache/log4j/helpers/PatternParser;->formattingInfo:Lorg/apache/log4j/helpers/FormattingInfo;

    add-int/lit8 v1, v1, -0x30

    iput v1, v2, Lorg/apache/log4j/helpers/FormattingInfo;->max:I

    const/4 v1, 0x5

    iput v1, p0, Lorg/apache/log4j/helpers/PatternParser;->state:I

    goto :goto_0

    :cond_3
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Error occured in position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v3, p0, Lorg/apache/log4j/helpers/PatternParser;->i:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v3, ".\n Was expecting digit, instead got char \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v1, "\"."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;)V

    iput v0, p0, Lorg/apache/log4j/helpers/PatternParser;->state:I

    goto/16 :goto_0

    :pswitch_4
    iget-object v2, p0, Lorg/apache/log4j/helpers/PatternParser;->currentLiteral:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    packed-switch v1, :pswitch_data_1

    if-lt v1, v6, :cond_4

    if-gt v1, v4, :cond_4

    iget-object v2, p0, Lorg/apache/log4j/helpers/PatternParser;->formattingInfo:Lorg/apache/log4j/helpers/FormattingInfo;

    add-int/lit8 v1, v1, -0x30

    iput v1, v2, Lorg/apache/log4j/helpers/FormattingInfo;->min:I

    const/4 v1, 0x4

    iput v1, p0, Lorg/apache/log4j/helpers/PatternParser;->state:I

    goto/16 :goto_0

    :pswitch_5
    iput v3, p0, Lorg/apache/log4j/helpers/PatternParser;->state:I

    goto/16 :goto_0

    :pswitch_6
    iget-object v1, p0, Lorg/apache/log4j/helpers/PatternParser;->formattingInfo:Lorg/apache/log4j/helpers/FormattingInfo;

    iput-boolean v5, v1, Lorg/apache/log4j/helpers/FormattingInfo;->leftAlign:Z

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p0, v1}, Lorg/apache/log4j/helpers/PatternParser;->finalizeConverter(C)V

    goto/16 :goto_0

    :pswitch_7
    iget v2, p0, Lorg/apache/log4j/helpers/PatternParser;->i:I

    iget v3, p0, Lorg/apache/log4j/helpers/PatternParser;->patternLength:I

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lorg/apache/log4j/helpers/PatternParser;->currentLiteral:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    :cond_5
    const/16 v3, 0x25

    if-ne v1, v3, :cond_9

    iget-object v4, p0, Lorg/apache/log4j/helpers/PatternParser;->pattern:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v3, :cond_8

    const/16 v3, 0x6e

    if-eq v2, v3, :cond_7

    iget-object v2, p0, Lorg/apache/log4j/helpers/PatternParser;->currentLiteral:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-eqz v2, :cond_6

    new-instance v2, Lorg/apache/log4j/helpers/PatternParser$LiteralPatternConverter;

    iget-object v3, p0, Lorg/apache/log4j/helpers/PatternParser;->currentLiteral:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/log4j/helpers/PatternParser$LiteralPatternConverter;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lorg/apache/log4j/helpers/PatternParser;->addToList(Lorg/apache/log4j/helpers/PatternConverter;)V

    :cond_6
    iget-object v2, p0, Lorg/apache/log4j/helpers/PatternParser;->currentLiteral:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v2, p0, Lorg/apache/log4j/helpers/PatternParser;->currentLiteral:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iput v5, p0, Lorg/apache/log4j/helpers/PatternParser;->state:I

    iget-object v1, p0, Lorg/apache/log4j/helpers/PatternParser;->formattingInfo:Lorg/apache/log4j/helpers/FormattingInfo;

    invoke-virtual {v1}, Lorg/apache/log4j/helpers/FormattingInfo;->reset()V

    goto/16 :goto_0

    :cond_7
    iget-object v1, p0, Lorg/apache/log4j/helpers/PatternParser;->currentLiteral:Ljava/lang/StringBuffer;

    sget-object v2, Lorg/apache/log4j/Layout;->LINE_SEP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/apache/log4j/helpers/PatternParser;->i:I

    add-int/2addr v1, v5

    iput v1, p0, Lorg/apache/log4j/helpers/PatternParser;->i:I

    goto/16 :goto_0

    :cond_8
    iget-object v2, p0, Lorg/apache/log4j/helpers/PatternParser;->currentLiteral:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/apache/log4j/helpers/PatternParser;->i:I

    add-int/2addr v1, v5

    iput v1, p0, Lorg/apache/log4j/helpers/PatternParser;->i:I

    goto/16 :goto_0

    :cond_9
    iget-object v2, p0, Lorg/apache/log4j/helpers/PatternParser;->currentLiteral:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lorg/apache/log4j/helpers/PatternParser;->currentLiteral:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-eqz v0, :cond_b

    new-instance v0, Lorg/apache/log4j/helpers/PatternParser$LiteralPatternConverter;

    iget-object v1, p0, Lorg/apache/log4j/helpers/PatternParser;->currentLiteral:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/log4j/helpers/PatternParser$LiteralPatternConverter;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/apache/log4j/helpers/PatternParser;->addToList(Lorg/apache/log4j/helpers/PatternConverter;)V

    :cond_b
    iget-object v0, p0, Lorg/apache/log4j/helpers/PatternParser;->head:Lorg/apache/log4j/helpers/PatternConverter;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2d
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method
