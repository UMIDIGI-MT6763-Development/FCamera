.class public final Lmf/org/apache/xerces/impl/xpath/regex/REUtil;
.super Ljava/lang/Object;
.source "REUtil.java"


# static fields
.field static final CACHESIZE:I = 0x14

.field static final regexCache:[Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x14

    new-array v0, v0, [Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->regexCache:[Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final composeFromSurrogates(II)I
    .locals 1

    const v0, 0xd800

    sub-int/2addr p0, v0

    shl-int/lit8 p0, p0, 0xa

    const/high16 v0, 0x10000

    add-int/2addr p0, v0

    add-int/2addr p0, p1

    const p1, 0xdc00

    sub-int/2addr p0, p1

    return p0
.end method

.method static final createOptionString(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    and-int/lit16 v1, p0, 0x100

    if-eqz v1, :cond_0

    const/16 v1, 0x46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    and-int/lit16 v1, p0, 0x80

    if-eqz v1, :cond_1

    const/16 v1, 0x48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    and-int/lit16 v1, p0, 0x200

    if-eqz v1, :cond_2

    const/16 v1, 0x58

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_2
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_3

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_3
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_4

    const/16 v1, 0x6d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_4
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_5

    const/16 v1, 0x73

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_5
    and-int/lit8 v1, p0, 0x20

    if-eqz v1, :cond_6

    const/16 v1, 0x75

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_6
    and-int/lit8 v1, p0, 0x40

    if-eqz v1, :cond_7

    const/16 v1, 0x77

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_7
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_8

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_8
    and-int/lit16 p0, p0, 0x400

    if-eqz p0, :cond_9

    const/16 p0, 0x2c

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_9
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static createRegex(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    invoke-static {p1}, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->parseOptions(Ljava/lang/String;)I

    move-result v0

    sget-object v1, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->regexCache:[Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;

    monitor-enter v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/16 v4, 0x14

    const/4 v5, 0x0

    if-lt v3, v4, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    sget-object v4, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->regexCache:[Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;

    aget-object v4, v4, v3

    if-nez v4, :cond_1

    const/4 v3, -0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v4, p0, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->equals(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_4

    move-object v5, v4

    :goto_1
    const/4 v0, 0x1

    if-eqz v5, :cond_2

    if-eqz v3, :cond_3

    sget-object p0, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->regexCache:[Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;

    sget-object p1, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->regexCache:[Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;

    invoke-static {p0, v2, p1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object p0, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->regexCache:[Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;

    aput-object v5, p0, v2

    goto :goto_2

    :cond_2
    new-instance v5, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;

    invoke-direct {v5, p0, p1}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->regexCache:[Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;

    sget-object p1, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->regexCache:[Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;

    const/16 v3, 0x13

    invoke-static {p0, v2, p1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object p0, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->regexCache:[Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;

    aput-object v5, p0, v2

    :cond_3
    :goto_2
    monitor-exit v1

    return-object v5

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static final decomposeToSurrogates(I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [C

    const/high16 v1, 0x10000

    sub-int/2addr p0, v1

    shr-int/lit8 v1, p0, 0xa

    const v2, 0xd800

    add-int/2addr v1, v2

    int-to-char v1, v1

    const/4 v2, 0x0

    aput-char v1, v0, v2

    and-int/lit16 p0, p0, 0x3ff

    const v1, 0xdc00

    add-int/2addr p0, v1

    int-to-char p0, p0

    const/4 v1, 0x1

    aput-char p0, v0, v1

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method static dumpString(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_0

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/io/PrintStream;->println()V

    return-void

    :cond_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static final getOptionValue(I)I
    .locals 1

    const/16 v0, 0x2c

    if-eq p0, v0, :cond_7

    const/16 v0, 0x46

    if-eq p0, v0, :cond_6

    const/16 v0, 0x48

    if-eq p0, v0, :cond_5

    const/16 v0, 0x58

    if-eq p0, v0, :cond_4

    const/16 v0, 0x69

    if-eq p0, v0, :cond_3

    const/16 v0, 0x6d

    if-eq p0, v0, :cond_2

    const/16 v0, 0x73

    if-eq p0, v0, :cond_1

    const/16 v0, 0x75

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_0

    :pswitch_0
    const/16 p0, 0x10

    goto :goto_0

    :pswitch_1
    const/16 p0, 0x40

    goto :goto_0

    :cond_0
    const/16 p0, 0x20

    goto :goto_0

    :cond_1
    const/4 p0, 0x4

    goto :goto_0

    :cond_2
    const/16 p0, 0x8

    goto :goto_0

    :cond_3
    const/4 p0, 0x2

    goto :goto_0

    :cond_4
    const/16 p0, 0x200

    goto :goto_0

    :cond_5
    const/16 p0, 0x80

    goto :goto_0

    :cond_6
    const/16 p0, 0x100

    goto :goto_0

    :cond_7
    const/16 p0, 0x400

    :goto_0
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x77
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static final isHighSurrogate(I)Z
    .locals 1

    const v0, 0xfc00

    and-int/2addr p0, v0

    const v0, 0xd800

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static final isLowSurrogate(I)Z
    .locals 1

    const v0, 0xfc00

    and-int/2addr p0, v0

    const v0, 0xdc00

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, ""

    array-length v3, p0

    if-nez v3, :cond_0

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "Error:Usage: java REUtil -i|-m|-s|-u|-w|-X regularExpression String"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/System;->exit(I)V
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/xpath/regex/ParseException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    move-object v4, v0

    move-object v3, v2

    move-object v2, v4

    move v0, v1

    :goto_0
    :try_start_1
    array-length v5, p0

    if-lt v0, v5, :cond_4

    new-instance p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;

    invoke-direct {p0, v2, v3}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "RegularExpression: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v0, Lmf/org/apache/xerces/impl/xpath/regex/Match;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xpath/regex/Match;-><init>()V

    invoke-virtual {p0, v4, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->matches(Ljava/lang/String;Lmf/org/apache/xerces/impl/xpath/regex/Match;)Z

    move p0, v1

    :goto_1
    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->getNumberOfGroups()I

    move-result v3

    if-lt p0, v3, :cond_1

    goto/16 :goto_8

    :cond_1
    if-nez p0, :cond_2

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "Matched range for the whole pattern: "

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {v0, p0}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->getBeginning(I)I

    move-result v3

    if-gez v3, :cond_3

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "-1"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->getBeginning(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->getEnd(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->getCapturedText(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_3
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_4
    aget-object v5, p0, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_c

    aget-object v5, p0, v0

    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2d

    if-eq v5, v6, :cond_5

    goto/16 :goto_4

    :cond_5
    aget-object v5, p0, v0

    const-string v6, "-i"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "i"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_5

    :cond_6
    aget-object v5, p0, v0

    const-string v6, "-m"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "m"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_5

    :cond_7
    aget-object v5, p0, v0

    const-string v6, "-s"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "s"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_5

    :cond_8
    aget-object v5, p0, v0

    const-string v6, "-u"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "u"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_5

    :cond_9
    aget-object v5, p0, v0

    const-string v6, "-w"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "w"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    :cond_a
    aget-object v5, p0, v0

    const-string v6, "-X"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "X"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    :cond_b
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Unknown option: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v7, p0, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_5

    :cond_c
    :goto_4
    if-nez v2, :cond_d

    aget-object v2, p0, v0

    goto :goto_5

    :cond_d
    if-nez v4, :cond_e

    aget-object v4, p0, v0

    goto :goto_5

    :cond_e
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Unnecessary: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v7, p0, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Lmf/org/apache/xerces/impl/xpath/regex/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception p0

    goto :goto_6

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8

    :catch_2
    move-exception p0

    move-object v2, v0

    :goto_6
    if-nez v2, :cond_f

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/ParseException;->printStackTrace()V

    goto :goto_8

    :cond_f
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mf.org.apache.xerces.utils.regex.ParseException: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v0, "        "

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/ParseException;->getLocation()I

    move-result p0

    if-ltz p0, :cond_11

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :goto_7
    if-lt v1, p0, :cond_10

    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v0, "^"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_8

    :cond_10
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_11
    :goto_8
    return-void
.end method

.method public static matches(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->createRegex(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;

    move-result-object p0

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->matches(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static matches(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    invoke-static {p0, p1}, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->createRegex(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;

    move-result-object p0

    invoke-virtual {p0, p2}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->matches(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static final parseOptions(Ljava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    move v1, v0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v0, v2, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->getOptionValue(I)I

    move-result v2

    if-eqz v2, :cond_2

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    new-instance v1, Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown Option: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, -0x1

    invoke-direct {v1, p0, v0}, Lmf/org/apache/xerces/impl/xpath/regex/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public static quoteMeta(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v2

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_1

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0

    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const-string v5, ".*+?{[()|\\^$"

    invoke-virtual {v5, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_3

    if-nez v3, :cond_2

    new-instance v3, Ljava/lang/StringBuffer;

    sub-int v5, v0, v2

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v2

    invoke-direct {v3, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    if-lez v2, :cond_2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    const/16 v5, 0x5c

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_3
    if-eqz v3, :cond_4

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method static stripExtendedComment(Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-lt v2, v0, :cond_0

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v5, 0x9

    if-eq v2, v5, :cond_d

    const/16 v6, 0xa

    if-eq v2, v6, :cond_d

    const/16 v7, 0xc

    if-eq v2, v7, :cond_d

    const/16 v8, 0xd

    if-eq v2, v8, :cond_d

    const/16 v9, 0x20

    if-ne v2, v9, :cond_1

    goto/16 :goto_4

    :cond_1
    const/16 v10, 0x23

    if-ne v2, v10, :cond_4

    move v2, v4

    :goto_1
    if-lt v2, v0, :cond_2

    goto :goto_0

    :cond_2
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v8, :cond_e

    if-ne v2, v6, :cond_3

    goto/16 :goto_5

    :cond_3
    move v2, v4

    goto :goto_1

    :cond_4
    const/16 v11, 0x5c

    if-ne v2, v11, :cond_7

    if-ge v4, v0, :cond_7

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v10, :cond_6

    if-eq v2, v5, :cond_6

    if-eq v2, v6, :cond_6

    if-eq v2, v7, :cond_6

    if-eq v2, v8, :cond_6

    if-ne v2, v9, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v4, 0x1

    goto :goto_0

    :cond_6
    :goto_2
    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v4, 0x1

    goto :goto_0

    :cond_7
    const/16 v5, 0x5d

    const/16 v6, 0x5b

    if-ne v2, v6, :cond_b

    add-int/lit8 v3, v3, 0x1

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    if-ge v4, v0, :cond_e

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v6, :cond_a

    if-ne v2, v5, :cond_8

    goto :goto_3

    :cond_8
    const/16 v7, 0x5e

    if-ne v2, v7, :cond_e

    add-int/lit8 v2, v4, 0x1

    if-ge v2, v0, :cond_e

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v6, :cond_9

    if-ne v2, v5, :cond_e

    :cond_9
    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v4, 0x2

    goto/16 :goto_0

    :cond_a
    :goto_3
    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v4, 0x1

    goto/16 :goto_0

    :cond_b
    if-lez v3, :cond_c

    if-ne v2, v5, :cond_c

    add-int/lit8 v3, v3, -0x1

    :cond_c
    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v2, v4

    goto/16 :goto_0

    :cond_d
    :goto_4
    if-lez v3, :cond_e

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_e
    :goto_5
    move v2, v4

    goto/16 :goto_0
.end method

.method static final substring(Ljava/text/CharacterIterator;II)Ljava/lang/String;
    .locals 2

    sub-int/2addr p2, p1

    new-array p2, p2, [C

    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-lt v0, v1, :cond_0

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p2}, Ljava/lang/String;-><init>([C)V

    return-object p0

    :cond_0
    add-int v1, v0, p1

    invoke-interface {p0, v1}, Ljava/text/CharacterIterator;->setIndex(I)C

    move-result v1

    aput-char v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
