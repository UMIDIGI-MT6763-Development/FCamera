.class Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;
.super Ljava/lang/Object;
.source "RegexParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/impl/xpath/regex/RegexParser$ReferencePosition;
    }
.end annotation


# static fields
.field protected static final S_INBRACKETS:I = 0x1

.field protected static final S_INXBRACKETS:I = 0x2

.field protected static final S_NORMAL:I = 0x0

.field static final T_BACKSOLIDUS:I = 0xa

.field static final T_CARET:I = 0xb

.field static final T_CHAR:I = 0x0

.field static final T_COMMENT:I = 0x15

.field static final T_CONDITION:I = 0x17

.field static final T_DOLLAR:I = 0xc

.field static final T_DOT:I = 0x8

.field static final T_EOF:I = 0x1

.field static final T_INDEPENDENT:I = 0x12

.field static final T_LBRACKET:I = 0x9

.field static final T_LOOKAHEAD:I = 0xe

.field static final T_LOOKBEHIND:I = 0x10

.field static final T_LPAREN:I = 0x6

.field static final T_LPAREN2:I = 0xd

.field static final T_MODIFIERS:I = 0x16

.field static final T_NEGATIVELOOKAHEAD:I = 0xf

.field static final T_NEGATIVELOOKBEHIND:I = 0x11

.field static final T_OR:I = 0x2

.field static final T_PLUS:I = 0x4

.field static final T_POSIX_CHARCLASS_START:I = 0x14

.field static final T_QUESTION:I = 0x5

.field static final T_RPAREN:I = 0x7

.field static final T_SET_OPERATIONS:I = 0x13

.field static final T_STAR:I = 0x3

.field static final T_XMLSCHEMA_CC_SUBTRACTION:I = 0x18


# instance fields
.field chardata:I

.field context:I

.field hasBackReferences:Z

.field nexttoken:I

.field offset:I

.field options:I

.field parenOpened:I

.field parennumber:I

.field references:Ljava/util/Vector;

.field regex:Ljava/lang/String;

.field regexlen:I

.field resources:Ljava/util/ResourceBundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->context:I

    const/4 v0, 0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->parenOpened:I

    iput v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->parennumber:I

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->references:Ljava/util/Vector;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->setLocale(Ljava/util/Locale;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->context:I

    const/4 v0, 0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->parenOpened:I

    iput v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->parennumber:I

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->references:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->setLocale(Ljava/util/Locale;)V

    return-void
.end method

.method protected static final addCaseInsensitiveChar(Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;I)V
    .locals 3

    invoke-static {p1}, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->get(I)[I

    move-result-object v0

    invoke-virtual {p0, p1, p1}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->addRange(II)V

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    :goto_0
    array-length v1, v0

    if-lt p1, v1, :cond_0

    goto :goto_1

    :cond_0
    aget v1, v0, p1

    aget v2, v0, p1

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->addRange(II)V

    add-int/lit8 p1, p1, 0x2

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method protected static final addCaseInsensitiveCharRange(Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;II)V
    .locals 5

    if-gt p1, p2, :cond_0

    goto :goto_0

    :cond_0
    move v4, p2

    move p2, p1

    move p1, v4

    :goto_0
    invoke-virtual {p0, p1, p2}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->addRange(II)V

    :goto_1
    if-le p1, p2, :cond_1

    return-void

    :cond_1
    invoke-static {p1}, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->get(I)[I

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    :goto_2
    array-length v2, v0

    if-lt v1, v2, :cond_2

    goto :goto_3

    :cond_2
    aget v2, v0, v1

    aget v3, v0, v1

    invoke-virtual {p0, v2, v3}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->addRange(II)V

    add-int/lit8 v1, v1, 0x2

    goto :goto_2

    :cond_3
    :goto_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_1
.end method

.method private static final hexChar(I)I
    .locals 3

    const/16 v0, 0x30

    const/4 v1, -0x1

    if-ge p0, v0, :cond_0

    return v1

    :cond_0
    const/16 v2, 0x66

    if-le p0, v2, :cond_1

    return v1

    :cond_1
    const/16 v2, 0x39

    if-gt p0, v2, :cond_2

    sub-int/2addr p0, v0

    return p0

    :cond_2
    const/16 v0, 0x41

    if-ge p0, v0, :cond_3

    return v1

    :cond_3
    const/16 v2, 0x46

    if-gt p0, v2, :cond_4

    sub-int/2addr p0, v0

    add-int/lit8 p0, p0, 0xa

    return p0

    :cond_4
    const/16 v0, 0x61

    if-ge p0, v0, :cond_5

    return v1

    :cond_5
    sub-int/2addr p0, v0

    add-int/lit8 p0, p0, 0xa

    return p0
.end method


# virtual methods
.method checkQuestion(I)Z
    .locals 1

    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regexlen:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regex:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0x3f

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method decodeEscaped()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_18

    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    const/16 v2, 0x41

    if-eq v0, v2, :cond_17

    const/16 v2, 0x5a

    if-eq v0, v2, :cond_17

    const/16 v2, 0x6e

    if-eq v0, v2, :cond_16

    const/16 v1, 0x72

    if-eq v0, v1, :cond_15

    const/16 v1, 0x78

    const v2, 0x10ffff

    if-eq v0, v1, :cond_b

    const/16 v1, 0x7a

    if-eq v0, v1, :cond_17

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    move v1, v0

    goto/16 :goto_1

    :pswitch_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v0

    if-nez v0, :cond_6

    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    invoke-static {v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->hexChar(I)I

    move-result v0

    if-ltz v0, :cond_6

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v1

    if-nez v1, :cond_5

    iget v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    invoke-static {v1}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->hexChar(I)I

    move-result v1

    if-ltz v1, :cond_5

    mul-int/lit8 v0, v0, 0x10

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v1

    if-nez v1, :cond_4

    iget v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    invoke-static {v1}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->hexChar(I)I

    move-result v1

    if-ltz v1, :cond_4

    mul-int/lit8 v0, v0, 0x10

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v1

    if-nez v1, :cond_3

    iget v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    invoke-static {v1}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->hexChar(I)I

    move-result v1

    if-ltz v1, :cond_3

    mul-int/lit8 v0, v0, 0x10

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    invoke-static {v1}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->hexChar(I)I

    move-result v1

    if-ltz v1, :cond_2

    mul-int/lit8 v0, v0, 0x10

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    invoke-static {v1}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->hexChar(I)I

    move-result v1

    if-ltz v1, :cond_1

    mul-int/lit8 v0, v0, 0x10

    add-int/2addr v1, v0

    if-gt v1, v2, :cond_0

    goto/16 :goto_1

    :cond_0
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v0, v0, -0x1

    const-string v1, "parser.descappe.4"

    invoke-virtual {p0, v1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v0

    throw v0

    :cond_1
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v0, v0, -0x1

    const-string v1, "parser.descape.1"

    invoke-virtual {p0, v1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v0

    throw v0

    :cond_2
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v0, v0, -0x1

    const-string v1, "parser.descape.1"

    invoke-virtual {p0, v1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v0

    throw v0

    :cond_3
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v0, v0, -0x1

    const-string v1, "parser.descape.1"

    invoke-virtual {p0, v1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v0

    throw v0

    :cond_4
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v0, v0, -0x1

    const-string v1, "parser.descape.1"

    invoke-virtual {p0, v1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v0

    throw v0

    :cond_5
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v0, v0, -0x1

    const-string v1, "parser.descape.1"

    invoke-virtual {p0, v1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v0

    throw v0

    :cond_6
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v0, v0, -0x1

    const-string v1, "parser.descape.1"

    invoke-virtual {p0, v1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v0

    throw v0

    :pswitch_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v0

    if-nez v0, :cond_a

    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    invoke-static {v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->hexChar(I)I

    move-result v0

    if-ltz v0, :cond_a

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v1

    if-nez v1, :cond_9

    iget v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    invoke-static {v1}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->hexChar(I)I

    move-result v1

    if-ltz v1, :cond_9

    mul-int/lit8 v0, v0, 0x10

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v1

    if-nez v1, :cond_8

    iget v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    invoke-static {v1}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->hexChar(I)I

    move-result v1

    if-ltz v1, :cond_8

    mul-int/lit8 v0, v0, 0x10

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v1

    if-nez v1, :cond_7

    iget v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    invoke-static {v1}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->hexChar(I)I

    move-result v1

    if-ltz v1, :cond_7

    mul-int/lit8 v0, v0, 0x10

    add-int/2addr v1, v0

    goto/16 :goto_1

    :cond_7
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v0, v0, -0x1

    const-string v1, "parser.descape.1"

    invoke-virtual {p0, v1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v0

    throw v0

    :cond_8
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v0, v0, -0x1

    const-string v1, "parser.descape.1"

    invoke-virtual {p0, v1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v0

    throw v0

    :cond_9
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v0, v0, -0x1

    const-string v1, "parser.descape.1"

    invoke-virtual {p0, v1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v0

    throw v0

    :cond_a
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v0, v0, -0x1

    const-string v1, "parser.descape.1"

    invoke-virtual {p0, v1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v0

    throw v0

    :pswitch_2
    const/16 v1, 0x9

    goto/16 :goto_1

    :pswitch_3
    const/16 v1, 0xc

    goto/16 :goto_1

    :pswitch_4
    const/16 v1, 0x1b

    goto/16 :goto_1

    :cond_b
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v0

    if-nez v0, :cond_14

    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    const/16 v1, 0x7b

    if-ne v0, v1, :cond_11

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v0

    if-nez v0, :cond_10

    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    invoke-static {v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->hexChar(I)I

    move-result v0

    if-gez v0, :cond_e

    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    const/16 v3, 0x7d

    if-ne v0, v3, :cond_d

    if-gt v1, v2, :cond_c

    goto/16 :goto_1

    :cond_c
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v0, v0, -0x1

    const-string v1, "parser.descape.4"

    invoke-virtual {p0, v1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v0

    throw v0

    :cond_d
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v0, v0, -0x1

    const-string v1, "parser.descape.3"

    invoke-virtual {p0, v1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v0

    throw v0

    :cond_e
    mul-int/lit8 v3, v1, 0x10

    if-gt v1, v3, :cond_f

    add-int v1, v3, v0

    goto :goto_0

    :cond_f
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v0, v0, -0x1

    const-string v1, "parser.descape.2"

    invoke-virtual {p0, v1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v0

    throw v0

    :cond_10
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v0, v0, -0x1

    const-string v1, "parser.descape.1"

    invoke-virtual {p0, v1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v0

    throw v0

    :cond_11
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v0

    if-nez v0, :cond_13

    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    invoke-static {v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->hexChar(I)I

    move-result v0

    if-ltz v0, :cond_13

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v1

    if-nez v1, :cond_12

    iget v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    invoke-static {v1}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->hexChar(I)I

    move-result v1

    if-ltz v1, :cond_12

    mul-int/lit8 v0, v0, 0x10

    add-int/2addr v1, v0

    goto :goto_1

    :cond_12
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v0, v0, -0x1

    const-string v1, "parser.descape.1"

    invoke-virtual {p0, v1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v0

    throw v0

    :cond_13
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v0, v0, -0x1

    const-string v1, "parser.descape.1"

    invoke-virtual {p0, v1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v0

    throw v0

    :cond_14
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v0, v0, -0x1

    const-string v1, "parser.descape.1"

    invoke-virtual {p0, v1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v0

    throw v0

    :cond_15
    const/16 v1, 0xd

    :cond_16
    :goto_1
    return v1

    :cond_17
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v0, v0, -0x2

    const-string v1, "parser.descape.5"

    invoke-virtual {p0, v1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v0

    throw v0

    :cond_18
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v0, v0, -0x1

    const-string v1, "parser.next.1"

    invoke-virtual {p0, v1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x74
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method final ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
    .locals 2

    new-instance v0, Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->resources:Ljava/util/ResourceBundle;

    invoke-virtual {v1, p1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lmf/org/apache/xerces/impl/xpath/regex/ParseException;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method getTokenForShorthand(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 3

    const/16 v0, 0x44

    const/4 v1, 0x0

    const/16 v2, 0x20

    if-eq p1, v0, :cond_a

    const/16 v0, 0x53

    if-eq p1, v0, :cond_8

    const/16 v0, 0x57

    if-eq p1, v0, :cond_6

    const/16 v0, 0x64

    const/4 v1, 0x1

    if-eq p1, v0, :cond_4

    const/16 v0, 0x73

    if-eq p1, v0, :cond_2

    const/16 v0, 0x77

    if-ne p1, v0, :cond_1

    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->isSet(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "IsWord"

    invoke-static {p1, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getRange(Ljava/lang/String;Z)Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object p1

    goto/16 :goto_0

    :cond_0
    sget-object p1, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_wordchars:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    goto/16 :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Internal Error: shorthands: \\u"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x10

    invoke-static {p1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->isSet(I)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "IsSpace"

    invoke-static {p1, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getRange(Ljava/lang/String;Z)Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object p1

    goto :goto_0

    :cond_3
    sget-object p1, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_spaces:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->isSet(I)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "Nd"

    invoke-static {p1, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getRange(Ljava/lang/String;Z)Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object p1

    goto :goto_0

    :cond_5
    sget-object p1, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_0to9:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    goto :goto_0

    :cond_6
    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->isSet(I)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "IsWord"

    invoke-static {p1, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getRange(Ljava/lang/String;Z)Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object p1

    goto :goto_0

    :cond_7
    sget-object p1, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_not_wordchars:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    goto :goto_0

    :cond_8
    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->isSet(I)Z

    move-result p1

    if-eqz p1, :cond_9

    const-string p1, "IsSpace"

    invoke-static {p1, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getRange(Ljava/lang/String;Z)Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object p1

    goto :goto_0

    :cond_9
    sget-object p1, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_not_spaces:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    goto :goto_0

    :cond_a
    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->isSet(I)Z

    move-result p1

    if-eqz p1, :cond_b

    const-string p1, "Nd"

    invoke-static {p1, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getRange(Ljava/lang/String;Z)Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object p1

    goto :goto_0

    :cond_b
    sget-object p1, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_not_0to9:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    :goto_0
    return-object p1
.end method

.method protected final isSet(I)Z
    .locals 1

    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->options:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method final next()V
    .locals 12

    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    iget v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regexlen:I

    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    const/4 v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    iput v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->nexttoken:I

    return-void

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regex:Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    iget v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->context:I

    const/16 v3, 0x3a

    const/16 v4, 0x5b

    const/16 v5, 0xa

    const/16 v6, 0x2d

    const/16 v7, 0x200

    const/4 v8, 0x0

    if-ne v1, v2, :cond_6

    if-eq v0, v6, :cond_4

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    iget v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regexlen:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regex:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    goto :goto_1

    :cond_1
    sub-int/2addr v0, v2

    const-string v1, "parser.next.1"

    invoke-virtual {p0, v1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v0

    throw v0

    :pswitch_1
    invoke-virtual {p0, v7}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->isSet(I)Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regexlen:I

    if-ge v1, v4, :cond_2

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regex:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_2

    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/2addr v0, v2

    iput v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    const/16 v5, 0x14

    goto :goto_1

    :cond_2
    :goto_0
    invoke-static {v0}, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->isHighSurrogate(I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    iget v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regexlen:I

    if-ge v1, v3, :cond_3

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regex:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->isLowSurrogate(I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->composeFromSurrogates(II)I

    move-result v0

    iput v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/2addr v0, v2

    iput v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    :cond_3
    move v5, v8

    goto :goto_1

    :cond_4
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    iget v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regexlen:I

    if-ge v0, v1, :cond_5

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regex:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_5

    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/2addr v0, v2

    iput v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    const/16 v5, 0x18

    goto :goto_1

    :cond_5
    move v5, v8

    :goto_1
    iput v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->nexttoken:I

    return-void

    :cond_6
    const/16 v1, 0x24

    const/4 v9, 0x2

    const/4 v10, 0x3

    if-eq v0, v1, :cond_1d

    const/16 v1, 0x2e

    if-eq v0, v1, :cond_1c

    const/16 v1, 0x3f

    if-eq v0, v1, :cond_1b

    const/16 v11, 0x5e

    if-eq v0, v11, :cond_19

    const/16 v7, 0x7c

    if-eq v0, v7, :cond_18

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    move v5, v8

    goto/16 :goto_4

    :pswitch_2
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    iget v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regexlen:I

    if-ge v0, v1, :cond_7

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regex:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    goto/16 :goto_4

    :cond_7
    sub-int/2addr v0, v2

    const-string v1, "parser.next.1"

    invoke-virtual {p0, v1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v0

    throw v0

    :pswitch_3
    const/16 v5, 0x9

    goto/16 :goto_4

    :pswitch_4
    const/4 v5, 0x4

    goto/16 :goto_4

    :pswitch_5
    move v5, v10

    goto/16 :goto_4

    :pswitch_6
    const/4 v5, 0x7

    goto/16 :goto_4

    :pswitch_7
    const/4 v5, 0x6

    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    iget v7, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regexlen:I

    if-lt v0, v7, :cond_8

    goto/16 :goto_4

    :cond_8
    iget-object v7, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regex:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v1, :cond_9

    goto/16 :goto_4

    :cond_9
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/2addr v0, v2

    iput v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    iget v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regexlen:I

    if-ge v0, v1, :cond_17

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regex:Ljava/lang/String;

    iget v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v5, v1, 0x1

    iput v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x21

    if-eq v0, v1, :cond_16

    const/16 v5, 0x23

    if-eq v0, v5, :cond_13

    if-eq v0, v3, :cond_12

    if-eq v0, v4, :cond_11

    packed-switch v0, :pswitch_data_3

    if-eq v0, v6, :cond_d

    const/16 v1, 0x61

    if-gt v1, v0, :cond_a

    const/16 v1, 0x7a

    if-le v0, v1, :cond_d

    :cond_a
    const/16 v1, 0x41

    if-gt v1, v0, :cond_b

    const/16 v1, 0x5a

    if-gt v0, v1, :cond_b

    goto :goto_2

    :cond_b
    const/16 v1, 0x28

    if-ne v0, v1, :cond_c

    const/16 v5, 0x17

    goto/16 :goto_4

    :cond_c
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    sub-int/2addr v0, v9

    const-string v1, "parser.next.2"

    invoke-virtual {p0, v1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v0

    throw v0

    :cond_d
    :goto_2
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    sub-int/2addr v0, v2

    iput v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    const/16 v5, 0x16

    goto/16 :goto_4

    :pswitch_8
    const/16 v5, 0x12

    goto/16 :goto_4

    :pswitch_9
    const/16 v5, 0xe

    goto/16 :goto_4

    :pswitch_a
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    iget v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regexlen:I

    if-ge v0, v2, :cond_10

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regex:Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x3d

    if-ne v0, v2, :cond_e

    const/16 v5, 0x10

    goto/16 :goto_4

    :cond_e
    if-ne v0, v1, :cond_f

    const/16 v5, 0x11

    goto/16 :goto_4

    :cond_f
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    sub-int/2addr v0, v10

    const-string v1, "parser.next.3"

    invoke-virtual {p0, v1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v0

    throw v0

    :cond_10
    sub-int/2addr v0, v10

    const-string v1, "parser.next.2"

    invoke-virtual {p0, v1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v0

    throw v0

    :cond_11
    const/16 v5, 0x13

    goto :goto_4

    :cond_12
    const/16 v5, 0xd

    goto :goto_4

    :cond_13
    iget v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    iget v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regexlen:I

    const/16 v4, 0x29

    if-lt v1, v3, :cond_14

    goto :goto_3

    :cond_14
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regex:Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_13

    :goto_3
    if-ne v0, v4, :cond_15

    const/16 v5, 0x15

    goto :goto_4

    :cond_15
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    sub-int/2addr v0, v2

    const-string v1, "parser.next.4"

    invoke-virtual {p0, v1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v0

    throw v0

    :cond_16
    const/16 v5, 0xf

    goto :goto_4

    :cond_17
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    sub-int/2addr v0, v2

    const-string v1, "parser.next.2"

    invoke-virtual {p0, v1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v0

    throw v0

    :cond_18
    move v5, v9

    goto :goto_4

    :cond_19
    invoke-virtual {p0, v7}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->isSet(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    move v5, v8

    goto :goto_4

    :cond_1a
    const/16 v5, 0xb

    goto :goto_4

    :cond_1b
    const/4 v5, 0x5

    goto :goto_4

    :cond_1c
    const/16 v5, 0x8

    goto :goto_4

    :cond_1d
    invoke-virtual {p0, v7}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->isSet(I)Z

    move-result v0

    if-eqz v0, :cond_1e

    move v5, v8

    goto :goto_4

    :cond_1e
    const/16 v5, 0xc

    :goto_4
    iput v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->nexttoken:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x28
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x5b
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x3c
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method declared-synchronized parse(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iput p2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->options:I

    const/4 p2, 0x0

    iput p2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    invoke-virtual {p0, p2}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->setContext(I)V

    const/4 v0, 0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->parennumber:I

    iput v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->parenOpened:I

    iput-boolean p2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->hasBackReferences:Z

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regex:Ljava/lang/String;

    const/16 p1, 0x10

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->isSet(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regex:Ljava/lang/String;

    invoke-static {p1}, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->stripExtendedComment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regex:Ljava/lang/String;

    :cond_0
    iget-object p1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regex:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regexlen:I

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->parseRegex()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object p1

    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    iget v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regexlen:I

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->references:Ljava/util/Vector;

    if-eqz v0, :cond_3

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->references:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt p2, v0, :cond_1

    iget-object p2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->references:Ljava/util/Vector;

    invoke-virtual {p2}, Ljava/util/Vector;->removeAllElements()V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->references:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser$ReferencePosition;

    iget v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->parennumber:I

    iget v2, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser$ReferencePosition;->refNumber:I

    if-le v1, v2, :cond_2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    const-string p1, "parser.parse.2"

    iget p2, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser$ReferencePosition;->position:I

    invoke-virtual {p0, p1, p2}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object p1

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_1
    monitor-exit p0

    return-object p1

    :cond_4
    :try_start_1
    const-string p1, "parser.parse.1"

    iget p2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    invoke-virtual {p0, p1, p2}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method parseAtom()Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    const/4 v2, 0x6

    if-eq v0, v2, :cond_3

    const/16 v2, 0xd

    if-eq v0, v2, :cond_2

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    sub-int/2addr v0, v1

    const-string v1, "parser.atom.4"

    invoke-virtual {p0, v1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v0

    throw v0

    :pswitch_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->processCondition()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v0

    return-object v0

    :pswitch_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->processModifiers()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v0

    return-object v0

    :pswitch_2
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->parseSetOperations()Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v0

    return-object v0

    :pswitch_3
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->processIndependent()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v0

    return-object v0

    :pswitch_4
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    packed-switch v0, :pswitch_data_3

    packed-switch v0, :pswitch_data_4

    packed-switch v0, :pswitch_data_5

    packed-switch v0, :pswitch_data_6

    packed-switch v0, :pswitch_data_7

    sparse-switch v0, :sswitch_data_0

    invoke-static {v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createChar(I)Lmf/org/apache/xerces/impl/xpath/regex/Token$CharToken;

    move-result-object v0

    goto :goto_0

    :sswitch_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->processBacksolidus_i()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v0

    return-object v0

    :sswitch_1
    iget v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->processBacksolidus_pP(I)Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "parser.atom.5"

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v0

    throw v0

    :sswitch_2
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->processBacksolidus_I()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v0

    return-object v0

    :pswitch_5
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->processBacksolidus_g()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v0

    return-object v0

    :pswitch_6
    :sswitch_3
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->decodeEscaped()I

    move-result v0

    const/high16 v1, 0x10000

    if-ge v0, v1, :cond_1

    invoke-static {v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createChar(I)Lmf/org/apache/xerces/impl/xpath/regex/Token$CharToken;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->decomposeToSurrogates(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createString(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xpath/regex/Token$StringToken;

    move-result-object v0

    :goto_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    goto/16 :goto_1

    :pswitch_7
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->processBacksolidus_c()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v0

    return-object v0

    :pswitch_8
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->processBacksolidus_X()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v0

    return-object v0

    :pswitch_9
    :sswitch_4
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->getTokenForShorthand(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v0

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    return-object v0

    :pswitch_a
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->processBacksolidus_C()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v0

    return-object v0

    :pswitch_b
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->processBackreference()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v0

    return-object v0

    :pswitch_c
    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->parseCharacterClass(Z)Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v0

    return-object v0

    :pswitch_d
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    sget-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_dot:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->processParen2()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v0

    return-object v0

    :cond_3
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->processParen()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v0

    return-object v0

    :cond_4
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    const/16 v2, 0x5d

    if-eq v0, v2, :cond_6

    const/16 v2, 0x7b

    if-eq v0, v2, :cond_6

    const/16 v2, 0x7d

    if-eq v0, v2, :cond_6

    invoke-static {v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createChar(I)Lmf/org/apache/xerces/impl/xpath/regex/Token$CharToken;

    move-result-object v0

    iget v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    invoke-static {v2}, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->isHighSurrogate(I)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v3

    if-nez v3, :cond_5

    iget v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    invoke-static {v3}, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->isLowSurrogate(I)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v0, 0x2

    new-array v0, v0, [C

    int-to-char v2, v2

    const/4 v3, 0x0

    aput-char v2, v0, v3

    iget v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    int-to-char v2, v2

    aput-char v2, v0, v1

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-static {v1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createString(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xpath/regex/Token$StringToken;

    move-result-object v0

    invoke-static {v0, v3}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createParen(Lmf/org/apache/xerces/impl/xpath/regex/Token;I)Lmf/org/apache/xerces/impl/xpath/regex/Token$ParenToken;

    move-result-object v0

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    :cond_5
    :goto_1
    return-object v0

    :cond_6
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    sub-int/2addr v0, v1

    const-string v1, "parser.atom.4"

    invoke-virtual {p0, v1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_d
        :pswitch_c
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x12
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x16
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x31
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x43
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x57
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x63
        :pswitch_7
        :pswitch_9
        :pswitch_6
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x72
        :pswitch_6
        :pswitch_9
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_9
        :pswitch_6
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x49 -> :sswitch_2
        0x50 -> :sswitch_1
        0x53 -> :sswitch_4
        0x69 -> :sswitch_0
        0x6e -> :sswitch_3
        0x70 -> :sswitch_1
    .end sparse-switch
.end method

.method protected parseCharacterClass(Z)Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->setContext(I)V

    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v2

    const/16 v3, 0x5e

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-nez v2, :cond_1

    iget v2, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    if-ne v2, v3, :cond_1

    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    if-eqz p1, :cond_0

    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createNRange()Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v2

    move-object v6, v5

    move v5, v1

    goto :goto_0

    :cond_0
    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createRange()Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v5

    const v2, 0x10ffff

    invoke-virtual {v5, v4, v2}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->addRange(II)V

    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createRange()Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v2

    move-object v6, v5

    move v5, v1

    goto :goto_0

    :cond_1
    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createRange()Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v2

    move-object v6, v5

    move v5, v4

    :goto_0
    move v7, v1

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v8

    if-ne v8, v1, :cond_2

    goto/16 :goto_4

    :cond_2
    const/16 v9, 0x5d

    if-nez v8, :cond_3

    iget v10, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    if-ne v10, v9, :cond_3

    if-nez v7, :cond_3

    goto/16 :goto_4

    :cond_3
    iget v10, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    const/16 v11, 0x18

    const/16 v12, 0xa

    if-ne v8, v12, :cond_6

    sparse-switch v10, :sswitch_data_0

    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->decodeEscaped()I

    move-result v10

    move v7, v4

    goto/16 :goto_5

    :sswitch_0
    iget v7, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    invoke-virtual {v0, v10}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->processBacksolidus_pP(I)Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v13

    if-eqz v13, :cond_4

    invoke-virtual {v2, v13}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->mergeRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V

    move v7, v1

    goto/16 :goto_5

    :cond_4
    const-string v1, "parser.atom.5"

    invoke-virtual {v0, v1, v7}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v1

    throw v1

    :sswitch_1
    invoke-virtual {v0, v10}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->getTokenForShorthand(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v7

    invoke-virtual {v2, v7}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->mergeRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V

    move v7, v1

    goto/16 :goto_5

    :sswitch_2
    invoke-virtual {v0, v2, v10}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->processCIinCharacterClass(Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;I)I

    move-result v10

    if-gez v10, :cond_5

    move v7, v1

    goto/16 :goto_5

    :cond_5
    move v7, v4

    goto/16 :goto_5

    :cond_6
    const/16 v13, 0x14

    if-ne v8, v13, :cond_b

    iget-object v7, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regex:Ljava/lang/String;

    const/16 v13, 0x3a

    iget v14, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    invoke-virtual {v7, v13, v14}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    if-ltz v7, :cond_a

    iget-object v13, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regex:Ljava/lang/String;

    iget v14, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    invoke-virtual {v13, v14}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-ne v13, v3, :cond_7

    iget v13, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/2addr v13, v1

    iput v13, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    move v13, v4

    goto :goto_2

    :cond_7
    move v13, v1

    :goto_2
    iget-object v14, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regex:Ljava/lang/String;

    iget v15, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    invoke-virtual {v14, v15, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x200

    invoke-virtual {v0, v15}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->isSet(I)Z

    move-result v15

    invoke-static {v14, v13, v15}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getRange(Ljava/lang/String;ZZ)Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v13

    if-eqz v13, :cond_9

    invoke-virtual {v2, v13}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->mergeRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V

    add-int/lit8 v13, v7, 0x1

    iget v14, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regexlen:I

    if-ge v13, v14, :cond_8

    iget-object v14, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regex:Ljava/lang/String;

    invoke-virtual {v14, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-ne v13, v9, :cond_8

    add-int/lit8 v7, v7, 0x2

    iput v7, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    move v7, v1

    goto/16 :goto_5

    :cond_8
    const-string v1, "parser.cc.1"

    invoke-virtual {v0, v1, v7}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v1

    throw v1

    :cond_9
    iget v1, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    const-string v2, "parser.cc.3"

    invoke-virtual {v0, v2, v1}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v1

    throw v1

    :cond_a
    iget v1, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    const-string v2, "parser.cc.1"

    invoke-virtual {v0, v2, v1}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v1

    throw v1

    :cond_b
    if-ne v8, v11, :cond_11

    if-nez v7, :cond_11

    if-eqz v5, :cond_d

    if-eqz p1, :cond_c

    invoke-static {v2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->complementRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v2

    check-cast v2, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move v5, v4

    goto :goto_3

    :cond_c
    invoke-virtual {v6, v2}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->subtractRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V

    move v5, v4

    move-object v2, v6

    :cond_d
    :goto_3
    invoke-virtual {v0, v4}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->parseCharacterClass(Z)Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->subtractRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V

    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v3

    if-nez v3, :cond_10

    iget v3, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    if-ne v3, v9, :cond_10

    :goto_4
    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v3

    if-eq v3, v1, :cond_f

    if-nez p1, :cond_e

    if-eqz v5, :cond_e

    invoke-virtual {v6, v2}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->subtractRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V

    move-object v2, v6

    :cond_e
    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->sortRanges()V

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->compactRanges()V

    invoke-virtual {v0, v4}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->setContext(I)V

    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    return-object v2

    :cond_f
    iget v1, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    const-string v2, "parser.cc.2"

    invoke-virtual {v0, v2, v1}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v1

    throw v1

    :cond_10
    iget v1, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    const-string v2, "parser.cc.5"

    invoke-virtual {v0, v2, v1}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v1

    throw v1

    :cond_11
    move v7, v4

    :goto_5
    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    if-nez v7, :cond_1f

    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v7

    const v13, 0xffff

    const/4 v14, 0x2

    if-nez v7, :cond_1c

    iget v7, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    const/16 v15, 0x2d

    if-eq v7, v15, :cond_12

    goto :goto_9

    :cond_12
    if-eq v8, v11, :cond_1b

    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v7

    if-eq v7, v1, :cond_1a

    if-nez v7, :cond_15

    iget v8, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    if-ne v8, v9, :cond_15

    invoke-virtual {v0, v14}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->isSet(I)Z

    move-result v7

    if-eqz v7, :cond_14

    if-le v10, v13, :cond_13

    goto :goto_6

    :cond_13
    invoke-static {v2, v10}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->addCaseInsensitiveChar(Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;I)V

    goto :goto_7

    :cond_14
    :goto_6
    invoke-virtual {v2, v10, v10}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->addRange(II)V

    :goto_7
    invoke-virtual {v2, v15, v15}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->addRange(II)V

    goto :goto_b

    :cond_15
    iget v8, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    if-ne v7, v12, :cond_16

    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->decodeEscaped()I

    move-result v8

    :cond_16
    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    if-gt v10, v8, :cond_19

    invoke-virtual {v0, v14}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->isSet(I)Z

    move-result v7

    if-eqz v7, :cond_18

    if-le v10, v13, :cond_17

    if-le v8, v13, :cond_17

    goto :goto_8

    :cond_17
    invoke-static {v2, v10, v8}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->addCaseInsensitiveCharRange(Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;II)V

    goto :goto_b

    :cond_18
    :goto_8
    invoke-virtual {v2, v10, v8}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->addRange(II)V

    goto :goto_b

    :cond_19
    iget v2, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    sub-int/2addr v2, v1

    const-string v1, "parser.ope.3"

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v1

    throw v1

    :cond_1a
    iget v1, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    const-string v2, "parser.cc.2"

    invoke-virtual {v0, v2, v1}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v1

    throw v1

    :cond_1b
    iget v2, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    sub-int/2addr v2, v1

    const-string v1, "parser.cc.8"

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v1

    throw v1

    :cond_1c
    :goto_9
    invoke-virtual {v0, v14}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->isSet(I)Z

    move-result v7

    if-eqz v7, :cond_1e

    if-le v10, v13, :cond_1d

    goto :goto_a

    :cond_1d
    invoke-static {v2, v10}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->addCaseInsensitiveChar(Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;I)V

    goto :goto_b

    :cond_1e
    :goto_a
    invoke-virtual {v2, v10, v10}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->addRange(II)V

    :cond_1f
    :goto_b
    const/16 v7, 0x400

    invoke-virtual {v0, v7}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->isSet(I)Z

    move-result v7

    if-eqz v7, :cond_20

    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v7

    if-nez v7, :cond_20

    iget v7, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    const/16 v8, 0x2c

    if-ne v7, v8, :cond_20

    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    :cond_20
    move v7, v4

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x43 -> :sswitch_2
        0x44 -> :sswitch_1
        0x49 -> :sswitch_2
        0x50 -> :sswitch_0
        0x53 -> :sswitch_1
        0x57 -> :sswitch_1
        0x63 -> :sswitch_2
        0x64 -> :sswitch_1
        0x69 -> :sswitch_2
        0x70 -> :sswitch_0
        0x73 -> :sswitch_1
        0x77 -> :sswitch_1
    .end sparse-switch
.end method

.method parseFactor()Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createEmpty()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v0

    return-object v0

    :pswitch_2
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->processNegativelookbehind()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v0

    return-object v0

    :pswitch_3
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->processLookbehind()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v0

    return-object v0

    :pswitch_4
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->processNegativelookahead()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v0

    return-object v0

    :pswitch_5
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->processLookahead()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v0

    return-object v0

    :pswitch_6
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->processDollar()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v0

    return-object v0

    :pswitch_7
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->processCaret()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v0

    return-object v0

    :pswitch_8
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_4

    const/16 v1, 0x3e

    if-eq v0, v1, :cond_3

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_2

    const/16 v1, 0x62

    if-eq v0, v1, :cond_1

    const/16 v1, 0x7a

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_9
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->processBacksolidus_B()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v0

    return-object v0

    :pswitch_a
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->processBacksolidus_A()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->processBacksolidus_z()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->processBacksolidus_b()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->processBacksolidus_Z()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v0

    return-object v0

    :cond_3
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->processBacksolidus_gt()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v0

    return-object v0

    :cond_4
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->processBacksolidus_lt()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v0

    return-object v0

    :goto_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->parseAtom()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v0

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v1

    if-eqz v1, :cond_5

    packed-switch v1, :pswitch_data_2

    goto/16 :goto_7

    :pswitch_b
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->processQuestion(Lmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v0

    return-object v0

    :pswitch_c
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->processPlus(Lmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v0

    return-object v0

    :pswitch_d
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->processStar(Lmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v0

    return-object v0

    :cond_5
    iget v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    const/16 v2, 0x7b

    if-ne v1, v2, :cond_15

    iget v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    iget v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regexlen:I

    if-ge v1, v2, :cond_15

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regex:Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-lt v1, v2, :cond_14

    const/16 v4, 0x39

    if-gt v1, v4, :cond_14

    add-int/lit8 v5, v1, -0x30

    :goto_1
    iget v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regexlen:I

    if-ge v3, v6, :cond_9

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regex:Ljava/lang/String;

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-lt v1, v2, :cond_8

    if-le v1, v4, :cond_6

    goto :goto_2

    :cond_6
    mul-int/lit8 v5, v5, 0xa

    add-int/2addr v5, v1

    sub-int/2addr v5, v2

    if-ltz v5, :cond_7

    move v3, v6

    goto :goto_1

    :cond_7
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    const-string v1, "parser.quantifier.5"

    invoke-virtual {p0, v1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v0

    throw v0

    :cond_8
    :goto_2
    move v3, v6

    :cond_9
    const/16 v6, 0x2c

    if-ne v1, v6, :cond_11

    iget v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regexlen:I

    if-ge v3, v1, :cond_10

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regex:Ljava/lang/String;

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-lt v1, v2, :cond_f

    if-gt v1, v4, :cond_f

    add-int/lit8 v3, v1, -0x30

    :goto_3
    iget v7, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regexlen:I

    if-ge v6, v7, :cond_d

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regex:Ljava/lang/String;

    add-int/lit8 v7, v6, 0x1

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-lt v1, v2, :cond_c

    if-le v1, v4, :cond_a

    goto :goto_4

    :cond_a
    mul-int/lit8 v3, v3, 0xa

    add-int/2addr v3, v1

    sub-int/2addr v3, v2

    if-ltz v3, :cond_b

    move v6, v7

    goto :goto_3

    :cond_b
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    const-string v1, "parser.quantifier.5"

    invoke-virtual {p0, v1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v0

    throw v0

    :cond_c
    :goto_4
    move v6, v7

    :cond_d
    if-gt v5, v3, :cond_e

    move v2, v3

    goto :goto_5

    :cond_e
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    const-string v1, "parser.quantifier.4"

    invoke-virtual {p0, v1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v0

    throw v0

    :cond_f
    const/4 v2, -0x1

    goto :goto_5

    :cond_10
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    const-string v1, "parser.quantifier.3"

    invoke-virtual {p0, v1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v0

    throw v0

    :cond_11
    move v6, v3

    move v2, v5

    :goto_5
    const/16 v3, 0x7d

    if-ne v1, v3, :cond_13

    invoke-virtual {p0, v6}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->checkQuestion(I)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-static {v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createNGClosure(Lmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;

    move-result-object v0

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    goto :goto_6

    :cond_12
    invoke-static {v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createClosure(Lmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;

    move-result-object v0

    iput v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    :goto_6
    invoke-virtual {v0, v5}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->setMin(I)V

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->setMax(I)V

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    goto :goto_7

    :cond_13
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    const-string v1, "parser.quantifier.2"

    invoke-virtual {p0, v1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v0

    throw v0

    :cond_14
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    const-string v1, "parser.quantifier.1"

    invoke-virtual {p0, v1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v0

    throw v0

    :cond_15
    :goto_7
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x41
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x3
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch
.end method

.method parseRegex()Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->parseTerm()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    if-nez v1, :cond_1

    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createUnion()Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->addChild(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V

    move-object v0, v1

    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->parseTerm()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->addChild(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V

    goto :goto_0
.end method

.method protected parseSetOperations()Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->parseCharacterClass(Z)Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v1

    :goto_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    return-object v1

    :cond_0
    iget v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    const/16 v4, 0x26

    const/16 v5, 0x2d

    const/4 v6, 0x4

    if-nez v2, :cond_1

    if-eq v3, v5, :cond_2

    if-eq v3, v4, :cond_2

    :cond_1
    if-ne v2, v6, :cond_7

    :cond_2
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v7

    const/16 v8, 0x9

    if-ne v7, v8, :cond_6

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->parseCharacterClass(Z)Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v7

    if-ne v2, v6, :cond_3

    invoke-virtual {v1, v7}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->mergeRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V

    goto :goto_0

    :cond_3
    if-ne v3, v5, :cond_4

    invoke-virtual {v1, v7}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->subtractRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V

    goto :goto_0

    :cond_4
    if-ne v3, v4, :cond_5

    invoke-virtual {v1, v7}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->intersectRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ASSERT"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v0, v0, -0x1

    const-string v1, "parser.ope.1"

    invoke-virtual {p0, v1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v0

    throw v0

    :cond_7
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v0, v0, -0x1

    const-string v1, "parser.ope.2"

    invoke-virtual {p0, v1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v0

    throw v0
.end method

.method parseTerm()Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v2, 0x7

    if-eq v0, v2, :cond_4

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->parseFactor()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v0

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v5

    if-eq v5, v1, :cond_3

    if-eq v5, v2, :cond_3

    if-ne v5, v3, :cond_1

    goto :goto_1

    :cond_1
    if-nez v4, :cond_2

    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createConcat()Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;

    move-result-object v4

    invoke-virtual {v4, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->addChild(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V

    move-object v0, v4

    :cond_2
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->parseFactor()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->addChild(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V

    goto :goto_0

    :cond_3
    :goto_1
    return-object v0

    :cond_4
    :goto_2
    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createEmpty()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v0

    return-object v0
.end method

.method processBackreference()Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    const/16 v1, 0x30

    sub-int/2addr v0, v1

    iget v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->parennumber:I

    if-le v2, v0, :cond_3

    :goto_0
    iget v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    iget v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regexlen:I

    const/4 v4, 0x1

    if-lt v2, v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regex:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-gt v1, v2, :cond_1

    const/16 v3, 0x39

    if-gt v2, v3, :cond_1

    mul-int/lit8 v3, v0, 0xa

    add-int/lit8 v5, v2, -0x30

    add-int/2addr v3, v5

    iget v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->parennumber:I

    if-ge v3, v5, :cond_1

    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/2addr v0, v4

    iput v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    iput v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    move v0, v3

    goto :goto_0

    :cond_1
    :goto_1
    invoke-static {v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createBackReference(I)Lmf/org/apache/xerces/impl/xpath/regex/Token$StringToken;

    move-result-object v1

    iput-boolean v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->hasBackReferences:Z

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->references:Ljava/util/Vector;

    if-nez v2, :cond_2

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->references:Ljava/util/Vector;

    :cond_2
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->references:Ljava/util/Vector;

    new-instance v3, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser$ReferencePosition;

    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v4, v4, -0x2

    invoke-direct {v3, v0, v4}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser$ReferencePosition;-><init>(II)V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    return-object v1

    :cond_3
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v0, v0, -0x2

    const-string v1, "parser.parse.2"

    invoke-virtual {p0, v1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v0

    throw v0
.end method

.method processBacksolidus_A()Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    sget-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_stringbeginning:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    return-object v0
.end method

.method processBacksolidus_B()Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    sget-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_not_wordedge:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    return-object v0
.end method

.method processBacksolidus_C()Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    const-string v1, "parser.process.1"

    invoke-virtual {p0, v1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v0

    throw v0
.end method

.method processBacksolidus_I()Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    const-string v1, "parser.process.1"

    invoke-virtual {p0, v1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v0

    throw v0
.end method

.method processBacksolidus_X()Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getCombiningCharacterSequence()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v0

    return-object v0
.end method

.method processBacksolidus_Z()Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    sget-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_stringend2:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    return-object v0
.end method

.method processBacksolidus_b()Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    sget-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_wordedge:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    return-object v0
.end method

.method processBacksolidus_c()Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    iget v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regexlen:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regex:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const v1, 0xffe0

    and-int/2addr v1, v0

    const/16 v2, 0x40

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    sub-int/2addr v0, v2

    invoke-static {v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createChar(I)Lmf/org/apache/xerces/impl/xpath/regex/Token$CharToken;

    move-result-object v0

    return-object v0

    :cond_0
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v0, v0, -0x1

    const-string v1, "parser.atom.1"

    invoke-virtual {p0, v1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v0

    throw v0
.end method

.method processBacksolidus_g()Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getGraphemePattern()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v0

    return-object v0
.end method

.method processBacksolidus_gt()Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    sget-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_wordend:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    return-object v0
.end method

.method processBacksolidus_i()Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    const/16 v0, 0x69

    invoke-static {v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createChar(I)Lmf/org/apache/xerces/impl/xpath/regex/Token$CharToken;

    move-result-object v0

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    return-object v0
.end method

.method processBacksolidus_lt()Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    sget-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_wordbeginning:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    return-object v0
.end method

.method protected processBacksolidus_pP(I)Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    const/16 v2, 0x7b

    if-ne v0, v2, :cond_2

    const/16 v0, 0x70

    if-ne p1, v0, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regex:Ljava/lang/String;

    const/16 v3, 0x7d

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-ltz v2, :cond_1

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regex:Ljava/lang/String;

    invoke-virtual {v3, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    add-int/2addr v2, v1

    iput v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    const/16 v1, 0x200

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->isSet(I)Z

    move-result v1

    invoke-static {v0, p1, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getRange(Ljava/lang/String;ZZ)Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object p1

    return-object p1

    :cond_1
    iget p1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    const-string v0, "parser.atom.3"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object p1

    throw p1

    :cond_2
    iget p1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    sub-int/2addr p1, v1

    const-string v0, "parser.atom.2"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object p1

    throw p1
.end method

.method processBacksolidus_z()Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    sget-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_stringend:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    return-object v0
.end method

.method processCIinCharacterClass(Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;I)I
    .locals 0

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->decodeEscaped()I

    move-result p1

    return p1
.end method

.method processCaret()Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    sget-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_linebeginning:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    return-object v0
.end method

.method processCondition()Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v1, v0, 0x1

    iget v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regexlen:I

    if-ge v1, v2, :cond_d

    const/4 v1, -0x1

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regex:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x31

    const/4 v3, 0x7

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-gt v2, v0, :cond_6

    const/16 v2, 0x39

    if-gt v0, v2, :cond_6

    const/16 v1, 0x30

    sub-int/2addr v0, v1

    iget v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->parennumber:I

    if-le v6, v0, :cond_5

    :goto_0
    iget v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v7, v6, 0x1

    iget v8, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regexlen:I

    if-lt v7, v8, :cond_0

    goto :goto_1

    :cond_0
    iget-object v7, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regex:Ljava/lang/String;

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v7, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-gt v1, v6, :cond_2

    if-gt v6, v2, :cond_2

    mul-int/lit8 v7, v0, 0xa

    add-int/lit8 v6, v6, -0x30

    add-int/2addr v6, v7

    iget v7, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->parennumber:I

    if-ge v6, v7, :cond_1

    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/2addr v0, v5

    iput v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    move v0, v6

    goto :goto_0

    :cond_1
    move v1, v6

    goto :goto_2

    :cond_2
    :goto_1
    move v1, v0

    :goto_2
    iput-boolean v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->hasBackReferences:Z

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->references:Ljava/util/Vector;

    if-nez v2, :cond_3

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->references:Ljava/util/Vector;

    :cond_3
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->references:Ljava/util/Vector;

    new-instance v6, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser$ReferencePosition;

    iget v7, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    invoke-direct {v6, v0, v7}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser$ReferencePosition;-><init>(II)V

    invoke-virtual {v2, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/2addr v0, v5

    iput v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regex:Ljava/lang/String;

    iget v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x29

    if-ne v0, v2, :cond_4

    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/2addr v0, v5

    iput v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    move-object v0, v4

    goto :goto_3

    :cond_4
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    const-string v1, "parser.factor.1"

    invoke-virtual {p0, v1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v0

    throw v0

    :cond_5
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    const-string v1, "parser.parse.2"

    invoke-virtual {p0, v1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v0

    throw v0

    :cond_6
    const/16 v2, 0x3f

    if-ne v0, v2, :cond_7

    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    sub-int/2addr v0, v5

    iput v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    :cond_7
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->parseFactor()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v0

    iget v2, v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    const/16 v6, 0x8

    if-eq v2, v6, :cond_8

    packed-switch v2, :pswitch_data_0

    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    const-string v1, "parser.factor.5"

    invoke-virtual {p0, v1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v0

    throw v0

    :cond_8
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v2

    if-ne v2, v3, :cond_c

    :goto_3
    :pswitch_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->parseRegex()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v2

    iget v6, v2, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_a

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->size()I

    move-result v4

    if-ne v4, v7, :cond_9

    invoke-virtual {v2, v5}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v2

    goto :goto_4

    :cond_9
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    const-string v1, "parser.factor.6"

    invoke-virtual {p0, v1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v0

    throw v0

    :cond_a
    :goto_4
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v6

    if-ne v6, v3, :cond_b

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    invoke-static {v1, v0, v2, v4}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createCondition(ILmf/org/apache/xerces/impl/xpath/regex/Token;Lmf/org/apache/xerces/impl/xpath/regex/Token;Lmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token$ConditionToken;

    move-result-object v0

    return-object v0

    :cond_b
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    sub-int/2addr v0, v5

    const-string v1, "parser.factor.1"

    invoke-virtual {p0, v1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v0

    throw v0

    :cond_c
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    sub-int/2addr v0, v5

    const-string v1, "parser.factor.1"

    invoke-virtual {p0, v1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v0

    throw v0

    :cond_d
    const-string v1, "parser.factor.4"

    invoke-virtual {p0, v1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method processDollar()Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    sget-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_lineend:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    return-object v0
.end method

.method processIndependent()Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->parseRegex()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v0

    const/16 v1, 0x18

    invoke-static {v1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createLook(ILmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token$ParenToken;

    move-result-object v0

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    return-object v0

    :cond_0
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v0, v0, -0x1

    const-string v1, "parser.factor.1"

    invoke-virtual {p0, v1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v0

    throw v0
.end method

.method processLookahead()Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->parseRegex()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v0

    const/16 v1, 0x14

    invoke-static {v1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createLook(ILmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token$ParenToken;

    move-result-object v0

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    return-object v0

    :cond_0
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v0, v0, -0x1

    const-string v1, "parser.factor.1"

    invoke-virtual {p0, v1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v0

    throw v0
.end method

.method processLookbehind()Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->parseRegex()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v0

    const/16 v1, 0x16

    invoke-static {v1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createLook(ILmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token$ParenToken;

    move-result-object v0

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    return-object v0

    :cond_0
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v0, v0, -0x1

    const-string v1, "parser.factor.1"

    invoke-virtual {p0, v1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v0

    throw v0
.end method

.method processModifiers()Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, -0x1

    move v2, v1

    move v1, v0

    :goto_0
    iget v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regexlen:I

    if-lt v3, v4, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regex:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->getOptionValue(I)I

    move-result v3

    if-nez v3, :cond_9

    :goto_1
    iget v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regexlen:I

    if-ge v3, v4, :cond_8

    const/16 v4, 0x2d

    if-ne v2, v4, :cond_4

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    :goto_2
    iget v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regexlen:I

    if-lt v3, v4, :cond_1

    goto :goto_3

    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regex:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->getOptionValue(I)I

    move-result v3

    if-nez v3, :cond_3

    :goto_3
    iget v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regexlen:I

    if-ge v3, v4, :cond_2

    goto :goto_4

    :cond_2
    add-int/lit8 v3, v3, -0x1

    const-string v0, "parser.factor.2"

    invoke-virtual {p0, v0, v3}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v0

    throw v0

    :cond_3
    or-int/2addr v0, v3

    iget v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    goto :goto_2

    :cond_4
    :goto_4
    const/16 v3, 0x3a

    if-ne v2, v3, :cond_6

    iget v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->parseRegex()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v2

    invoke-static {v2, v1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createModifierGroup(Lmf/org/apache/xerces/impl/xpath/regex/Token;II)Lmf/org/apache/xerces/impl/xpath/regex/Token$ModifierToken;

    move-result-object v0

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_5

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    goto :goto_5

    :cond_5
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v0, v0, -0x1

    const-string v1, "parser.factor.1"

    invoke-virtual {p0, v1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v0

    throw v0

    :cond_6
    const/16 v3, 0x29

    if-ne v2, v3, :cond_7

    iget v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->parseRegex()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v2

    invoke-static {v2, v1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createModifierGroup(Lmf/org/apache/xerces/impl/xpath/regex/Token;II)Lmf/org/apache/xerces/impl/xpath/regex/Token$ModifierToken;

    move-result-object v0

    :goto_5
    return-object v0

    :cond_7
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    const-string v1, "parser.factor.3"

    invoke-virtual {p0, v1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v0

    throw v0

    :cond_8
    add-int/lit8 v3, v3, -0x1

    const-string v0, "parser.factor.2"

    invoke-virtual {p0, v0, v3}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v0

    throw v0

    :cond_9
    or-int/2addr v1, v3

    iget v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    goto/16 :goto_0
.end method

.method processNegativelookahead()Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->parseRegex()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v0

    const/16 v1, 0x15

    invoke-static {v1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createLook(ILmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token$ParenToken;

    move-result-object v0

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    return-object v0

    :cond_0
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v0, v0, -0x1

    const-string v1, "parser.factor.1"

    invoke-virtual {p0, v1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v0

    throw v0
.end method

.method processNegativelookbehind()Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->parseRegex()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v0

    const/16 v1, 0x17

    invoke-static {v1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createLook(ILmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token$ParenToken;

    move-result-object v0

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    return-object v0

    :cond_0
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v0, v0, -0x1

    const-string v1, "parser.factor.1"

    invoke-virtual {p0, v1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v0

    throw v0
.end method

.method processParen()Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->parenOpened:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->parenOpened:I

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->parseRegex()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v1

    invoke-static {v1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createParen(Lmf/org/apache/xerces/impl/xpath/regex/Token;I)Lmf/org/apache/xerces/impl/xpath/regex/Token$ParenToken;

    move-result-object v0

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    iget v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->parennumber:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->parennumber:I

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    return-object v0

    :cond_0
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v0, v0, -0x1

    const-string v1, "parser.factor.1"

    invoke-virtual {p0, v1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v0

    throw v0
.end method

.method processParen2()Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->parseRegex()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createParen(Lmf/org/apache/xerces/impl/xpath/regex/Token;I)Lmf/org/apache/xerces/impl/xpath/regex/Token$ParenToken;

    move-result-object v0

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    return-object v0

    :cond_0
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v0, v0, -0x1

    const-string v1, "parser.factor.1"

    invoke-virtual {p0, v1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v0

    throw v0
.end method

.method processPlus(Lmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    invoke-static {p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createNGClosure(Lmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;

    move-result-object v0

    invoke-static {p1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createConcat(Lmf/org/apache/xerces/impl/xpath/regex/Token;Lmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token$ConcatToken;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createClosure(Lmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;

    move-result-object v0

    invoke-static {p1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createConcat(Lmf/org/apache/xerces/impl/xpath/regex/Token;Lmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token$ConcatToken;

    move-result-object p1

    return-object p1
.end method

.method processQuestion(Lmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createUnion()Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;

    move-result-object v0

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createEmpty()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->addChild(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->addChild(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->addChild(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V

    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createEmpty()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object p1

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->addChild(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V

    :goto_0
    return-object v0
.end method

.method processStar(Lmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    invoke-static {p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createNGClosure(Lmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createClosure(Lmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;

    move-result-object p1

    return-object p1
.end method

.method final read()I
    .locals 1

    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->nexttoken:I

    return v0
.end method

.method protected final setContext(I)V
    .locals 0

    iput p1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->context:I

    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 3

    if-eqz p1, :cond_0

    :try_start_0
    const-string v0, "mf.org.apache.xerces.impl.xpath.regex.message"

    invoke-static {v0, p1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object p1

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->resources:Ljava/util/ResourceBundle;

    goto :goto_0

    :cond_0
    const-string p1, "mf.org.apache.xerces.impl.xpath.regex.message"

    invoke-static {p1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object p1

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->resources:Ljava/util/ResourceBundle;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Installation Problem???  Couldn\'t load messages: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/MissingResourceException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
