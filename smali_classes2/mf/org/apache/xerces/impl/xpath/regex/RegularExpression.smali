.class public Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;
.super Ljava/lang/Object;
.source "RegularExpression.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$CharArrayTarget;,
        Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$CharacterIteratorTarget;,
        Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ClosureContext;,
        Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;,
        Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;,
        Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$StringTarget;
    }
.end annotation


# static fields
.field static final CARRIAGE_RETURN:I = 0xd

.field static final DEBUG:Z = false

.field static final EXTENDED_COMMENT:I = 0x10

.field static final IGNORE_CASE:I = 0x2

.field static final LINE_FEED:I = 0xa

.field static final LINE_SEPARATOR:I = 0x2028

.field static final MULTIPLE_LINES:I = 0x8

.field static final PARAGRAPH_SEPARATOR:I = 0x2029

.field static final PROHIBIT_FIXED_STRING_OPTIMIZATION:I = 0x100

.field static final PROHIBIT_HEAD_CHARACTER_OPTIMIZATION:I = 0x80

.field static final SINGLE_LINE:I = 0x4

.field static final SPECIAL_COMMA:I = 0x400

.field static final UNICODE_WORD_BOUNDARY:I = 0x40

.field static final USE_UNICODE_CATEGORY:I = 0x20

.field private static final WT_IGNORE:I = 0x0

.field private static final WT_LETTER:I = 0x1

.field private static final WT_OTHER:I = 0x2

.field static final XMLSCHEMA_MODE:I = 0x200

.field private static final serialVersionUID:J = 0x56a1d011fd4e4bc1L


# instance fields
.field transient context:Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;

.field transient firstChar:Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

.field transient fixedString:Ljava/lang/String;

.field transient fixedStringOnly:Z

.field transient fixedStringOptions:I

.field transient fixedStringTable:Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;

.field hasBackReferences:Z

.field transient minlength:I

.field nofparen:I

.field transient numberOfClosures:I

.field transient operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

.field options:I

.field regex:Ljava/lang/String;

.field tokentree:Lmf/org/apache/xerces/impl/xpath/regex/Token;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->hasBackReferences:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->context:Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->firstChar:Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedString:Ljava/lang/String;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedStringTable:Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedStringOnly:Z

    invoke-virtual {p0, p1, p2}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->setPattern(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->hasBackReferences:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->context:Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->firstChar:Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedString:Ljava/lang/String;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedStringTable:Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedStringOnly:Z

    invoke-virtual {p0, p1, p2, p3}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->setPattern(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lmf/org/apache/xerces/impl/xpath/regex/Token;IZI)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->hasBackReferences:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->context:Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->firstChar:Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedString:Ljava/lang/String;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedStringTable:Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedStringOnly:Z

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->regex:Ljava/lang/String;

    iput-object p2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->tokentree:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    iput p3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->nofparen:I

    iput p5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    iput-boolean p4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->hasBackReferences:Z

    return-void
.end method

.method private compile(Lmf/org/apache/xerces/impl/xpath/regex/Token;Lmf/org/apache/xerces/impl/xpath/regex/Op;Z)Lmf/org/apache/xerces/impl/xpath/regex/Op;
    .locals 9

    iget v0, p1, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_1

    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Unknown token type: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_0
    check-cast p1, Lmf/org/apache/xerces/impl/xpath/regex/Token$ConditionToken;

    iget v0, p1, Lmf/org/apache/xerces/impl/xpath/regex/Token$ConditionToken;->refNumber:I

    iget-object v1, p1, Lmf/org/apache/xerces/impl/xpath/regex/Token$ConditionToken;->condition:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    if-nez v1, :cond_0

    move-object v1, v3

    goto :goto_0

    :cond_0
    iget-object v1, p1, Lmf/org/apache/xerces/impl/xpath/regex/Token$ConditionToken;->condition:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    invoke-direct {p0, v1, v3, p3}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->compile(Lmf/org/apache/xerces/impl/xpath/regex/Token;Lmf/org/apache/xerces/impl/xpath/regex/Op;Z)Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-result-object v1

    :goto_0
    iget-object v2, p1, Lmf/org/apache/xerces/impl/xpath/regex/Token$ConditionToken;->yes:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    invoke-direct {p0, v2, p2, p3}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->compile(Lmf/org/apache/xerces/impl/xpath/regex/Token;Lmf/org/apache/xerces/impl/xpath/regex/Op;Z)Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-result-object v2

    iget-object v4, p1, Lmf/org/apache/xerces/impl/xpath/regex/Token$ConditionToken;->no:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, p1, Lmf/org/apache/xerces/impl/xpath/regex/Token$ConditionToken;->no:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    invoke-direct {p0, p1, p2, p3}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->compile(Lmf/org/apache/xerces/impl/xpath/regex/Token;Lmf/org/apache/xerces/impl/xpath/regex/Op;Z)Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-result-object v3

    :goto_1
    invoke-static {p2, v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->createCondition(Lmf/org/apache/xerces/impl/xpath/regex/Op;ILmf/org/apache/xerces/impl/xpath/regex/Op;Lmf/org/apache/xerces/impl/xpath/regex/Op;Lmf/org/apache/xerces/impl/xpath/regex/Op;)Lmf/org/apache/xerces/impl/xpath/regex/Op$ConditionOp;

    move-result-object p2

    goto/16 :goto_b

    :pswitch_1
    invoke-virtual {p1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v0

    invoke-direct {p0, v0, v3, p3}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->compile(Lmf/org/apache/xerces/impl/xpath/regex/Token;Lmf/org/apache/xerces/impl/xpath/regex/Op;Z)Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-result-object p3

    check-cast p1, Lmf/org/apache/xerces/impl/xpath/regex/Token$ModifierToken;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token$ModifierToken;->getOptions()I

    move-result v0

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token$ModifierToken;->getOptionsMask()I

    move-result p1

    invoke-static {p2, p3, v0, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->createModifier(Lmf/org/apache/xerces/impl/xpath/regex/Op;Lmf/org/apache/xerces/impl/xpath/regex/Op;II)Lmf/org/apache/xerces/impl/xpath/regex/Op$ModifierOp;

    move-result-object p2

    goto/16 :goto_b

    :pswitch_2
    invoke-virtual {p1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object p1

    invoke-direct {p0, p1, v3, p3}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->compile(Lmf/org/apache/xerces/impl/xpath/regex/Token;Lmf/org/apache/xerces/impl/xpath/regex/Op;Z)Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-result-object p1

    invoke-static {p2, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->createIndependent(Lmf/org/apache/xerces/impl/xpath/regex/Op;Lmf/org/apache/xerces/impl/xpath/regex/Op;)Lmf/org/apache/xerces/impl/xpath/regex/Op$ChildOp;

    move-result-object p2

    goto/16 :goto_b

    :pswitch_3
    const/16 p3, 0x17

    invoke-virtual {p1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object p1

    invoke-direct {p0, p1, v3, v1}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->compile(Lmf/org/apache/xerces/impl/xpath/regex/Token;Lmf/org/apache/xerces/impl/xpath/regex/Op;Z)Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-result-object p1

    invoke-static {p3, p2, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->createLook(ILmf/org/apache/xerces/impl/xpath/regex/Op;Lmf/org/apache/xerces/impl/xpath/regex/Op;)Lmf/org/apache/xerces/impl/xpath/regex/Op$ChildOp;

    move-result-object p2

    goto/16 :goto_b

    :pswitch_4
    const/16 p3, 0x16

    invoke-virtual {p1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object p1

    invoke-direct {p0, p1, v3, v1}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->compile(Lmf/org/apache/xerces/impl/xpath/regex/Token;Lmf/org/apache/xerces/impl/xpath/regex/Op;Z)Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-result-object p1

    invoke-static {p3, p2, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->createLook(ILmf/org/apache/xerces/impl/xpath/regex/Op;Lmf/org/apache/xerces/impl/xpath/regex/Op;)Lmf/org/apache/xerces/impl/xpath/regex/Op$ChildOp;

    move-result-object p2

    goto/16 :goto_b

    :pswitch_5
    const/16 p3, 0x15

    invoke-virtual {p1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object p1

    invoke-direct {p0, p1, v3, v2}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->compile(Lmf/org/apache/xerces/impl/xpath/regex/Token;Lmf/org/apache/xerces/impl/xpath/regex/Op;Z)Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-result-object p1

    invoke-static {p3, p2, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->createLook(ILmf/org/apache/xerces/impl/xpath/regex/Op;Lmf/org/apache/xerces/impl/xpath/regex/Op;)Lmf/org/apache/xerces/impl/xpath/regex/Op$ChildOp;

    move-result-object p2

    goto/16 :goto_b

    :pswitch_6
    const/16 p3, 0x14

    invoke-virtual {p1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object p1

    invoke-direct {p0, p1, v3, v2}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->compile(Lmf/org/apache/xerces/impl/xpath/regex/Token;Lmf/org/apache/xerces/impl/xpath/regex/Op;Z)Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-result-object p1

    invoke-static {p3, p2, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->createLook(ILmf/org/apache/xerces/impl/xpath/regex/Op;Lmf/org/apache/xerces/impl/xpath/regex/Op;)Lmf/org/apache/xerces/impl/xpath/regex/Op$ChildOp;

    move-result-object p2

    goto/16 :goto_b

    :pswitch_7
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getReferenceNumber()I

    move-result p1

    invoke-static {p1}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->createBackReference(I)Lmf/org/apache/xerces/impl/xpath/regex/Op$CharOp;

    move-result-object p1

    iput-object p2, p1, Lmf/org/apache/xerces/impl/xpath/regex/Op;->next:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-object p2, p1

    goto/16 :goto_b

    :pswitch_8
    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->createDot()Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-result-object p1

    iput-object p2, p1, Lmf/org/apache/xerces/impl/xpath/regex/Op;->next:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-object p2, p1

    goto/16 :goto_b

    :pswitch_9
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->createString(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xpath/regex/Op$StringOp;

    move-result-object p1

    iput-object p2, p1, Lmf/org/apache/xerces/impl/xpath/regex/Op;->next:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-object p2, p1

    goto/16 :goto_b

    :pswitch_a
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChar()I

    move-result p1

    invoke-static {p1}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->createAnchor(I)Lmf/org/apache/xerces/impl/xpath/regex/Op$CharOp;

    move-result-object p1

    iput-object p2, p1, Lmf/org/apache/xerces/impl/xpath/regex/Op;->next:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-object p2, p1

    goto/16 :goto_b

    :pswitch_b
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getParenNumber()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->compile(Lmf/org/apache/xerces/impl/xpath/regex/Token;Lmf/org/apache/xerces/impl/xpath/regex/Op;Z)Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-result-object p2

    goto/16 :goto_b

    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getParenNumber()I

    move-result v0

    invoke-static {v0, p2}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->createCapture(ILmf/org/apache/xerces/impl/xpath/regex/Op;)Lmf/org/apache/xerces/impl/xpath/regex/Op$CharOp;

    move-result-object p2

    invoke-virtual {p1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->compile(Lmf/org/apache/xerces/impl/xpath/regex/Token;Lmf/org/apache/xerces/impl/xpath/regex/Op;Z)Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-result-object p2

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getParenNumber()I

    move-result p1

    neg-int p1, p1

    invoke-static {p1, p2}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->createCapture(ILmf/org/apache/xerces/impl/xpath/regex/Op;)Lmf/org/apache/xerces/impl/xpath/regex/Op$CharOp;

    move-result-object p2

    goto/16 :goto_b

    :cond_3
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getParenNumber()I

    move-result v0

    neg-int v0, v0

    invoke-static {v0, p2}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->createCapture(ILmf/org/apache/xerces/impl/xpath/regex/Op;)Lmf/org/apache/xerces/impl/xpath/regex/Op$CharOp;

    move-result-object p2

    invoke-virtual {p1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->compile(Lmf/org/apache/xerces/impl/xpath/regex/Token;Lmf/org/apache/xerces/impl/xpath/regex/Op;Z)Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-result-object p2

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getParenNumber()I

    move-result p1

    invoke-static {p1, p2}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->createCapture(ILmf/org/apache/xerces/impl/xpath/regex/Op;)Lmf/org/apache/xerces/impl/xpath/regex/Op$CharOp;

    move-result-object p2

    goto/16 :goto_b

    :pswitch_c
    invoke-static {p1}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->createRange(Lmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Op$RangeOp;

    move-result-object p1

    iput-object p2, p1, Lmf/org/apache/xerces/impl/xpath/regex/Op;->next:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-object p2, p1

    goto/16 :goto_b

    :pswitch_d
    invoke-virtual {p1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v0

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getMin()I

    move-result v3

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getMax()I

    move-result v4

    if-ltz v3, :cond_5

    if-ne v3, v4, :cond_5

    :goto_2
    if-lt v2, v3, :cond_4

    goto/16 :goto_b

    :cond_4
    invoke-direct {p0, v0, p2, p3}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->compile(Lmf/org/apache/xerces/impl/xpath/regex/Token;Lmf/org/apache/xerces/impl/xpath/regex/Op;Z)Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-result-object p2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    if-lez v3, :cond_6

    if-lez v4, :cond_6

    sub-int/2addr v4, v3

    :cond_6
    const/16 v5, 0x9

    if-lez v4, :cond_9

    move-object v7, p2

    move v6, v2

    :goto_3
    if-lt v6, v4, :cond_7

    move-object p2, v7

    goto :goto_6

    :cond_7
    iget v8, p1, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    if-ne v8, v5, :cond_8

    move v8, v1

    goto :goto_4

    :cond_8
    move v8, v2

    :goto_4
    invoke-static {v8}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->createQuestion(Z)Lmf/org/apache/xerces/impl/xpath/regex/Op$ChildOp;

    move-result-object v8

    iput-object p2, v8, Lmf/org/apache/xerces/impl/xpath/regex/Op$ChildOp;->next:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    invoke-direct {p0, v0, v7, p3}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->compile(Lmf/org/apache/xerces/impl/xpath/regex/Token;Lmf/org/apache/xerces/impl/xpath/regex/Op;Z)Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-result-object v7

    invoke-virtual {v8, v7}, Lmf/org/apache/xerces/impl/xpath/regex/Op$ChildOp;->setChild(Lmf/org/apache/xerces/impl/xpath/regex/Op;)V

    add-int/lit8 v6, v6, 0x1

    move-object v7, v8

    goto :goto_3

    :cond_9
    iget p1, p1, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    if-ne p1, v5, :cond_a

    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->createNonGreedyClosure()Lmf/org/apache/xerces/impl/xpath/regex/Op$ChildOp;

    move-result-object p1

    goto :goto_5

    :cond_a
    iget p1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->numberOfClosures:I

    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->numberOfClosures:I

    invoke-static {p1}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->createClosure(I)Lmf/org/apache/xerces/impl/xpath/regex/Op$ChildOp;

    move-result-object p1

    :goto_5
    iput-object p2, p1, Lmf/org/apache/xerces/impl/xpath/regex/Op$ChildOp;->next:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    invoke-direct {p0, v0, p1, p3}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->compile(Lmf/org/apache/xerces/impl/xpath/regex/Token;Lmf/org/apache/xerces/impl/xpath/regex/Op;Z)Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmf/org/apache/xerces/impl/xpath/regex/Op$ChildOp;->setChild(Lmf/org/apache/xerces/impl/xpath/regex/Op;)V

    move-object p2, p1

    :goto_6
    if-lez v3, :cond_10

    :goto_7
    if-lt v2, v3, :cond_b

    goto :goto_b

    :cond_b
    invoke-direct {p0, v0, p2, p3}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->compile(Lmf/org/apache/xerces/impl/xpath/regex/Token;Lmf/org/apache/xerces/impl/xpath/regex/Op;Z)Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-result-object p2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :pswitch_e
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->size()I

    move-result v0

    invoke-static {v0}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->createUnion(I)Lmf/org/apache/xerces/impl/xpath/regex/Op$UnionOp;

    move-result-object v0

    :goto_8
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->size()I

    move-result v1

    if-lt v2, v1, :cond_c

    move-object p2, v0

    goto :goto_b

    :cond_c
    invoke-virtual {p1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v1

    invoke-direct {p0, v1, p2, p3}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->compile(Lmf/org/apache/xerces/impl/xpath/regex/Token;Lmf/org/apache/xerces/impl/xpath/regex/Op;Z)Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Op$UnionOp;->addElement(Lmf/org/apache/xerces/impl/xpath/regex/Op;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :pswitch_f
    if-nez p3, :cond_e

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->size()I

    move-result p3

    sub-int/2addr p3, v1

    :goto_9
    if-gez p3, :cond_d

    goto :goto_b

    :cond_d
    invoke-virtual {p1, p3}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v0

    invoke-direct {p0, v0, p2, v2}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->compile(Lmf/org/apache/xerces/impl/xpath/regex/Token;Lmf/org/apache/xerces/impl/xpath/regex/Op;Z)Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-result-object p2

    add-int/lit8 p3, p3, -0x1

    goto :goto_9

    :cond_e
    :goto_a
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->size()I

    move-result p3

    if-lt v2, p3, :cond_f

    goto :goto_b

    :cond_f
    invoke-virtual {p1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object p3

    :try_start_0
    invoke-direct {p0, p3, p2, v1}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->compile(Lmf/org/apache/xerces/impl/xpath/regex/Token;Lmf/org/apache/xerces/impl/xpath/regex/Op;Z)Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :pswitch_10
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChar()I

    move-result p1

    invoke-static {p1}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->createChar(I)Lmf/org/apache/xerces/impl/xpath/regex/Op$CharOp;

    move-result-object p1

    iput-object p2, p1, Lmf/org/apache/xerces/impl/xpath/regex/Op;->next:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-object p2, p1

    :cond_10
    :goto_b
    :pswitch_11
    return-object p2

    :catch_0
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_11
        :pswitch_a
        :pswitch_d
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x14
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private declared-synchronized compile(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->numberOfClosures:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->compile(Lmf/org/apache/xerces/impl/xpath/regex/Token;Lmf/org/apache/xerces/impl/xpath/regex/Op;Z)Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-result-object p1

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static final getPreviousWordType(Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;IIII)I
    .locals 1

    add-int/lit8 p3, p3, -0x1

    invoke-static {p0, p1, p2, p3, p4}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->getWordType(Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;IIII)I

    move-result v0

    :goto_0
    if-eqz v0, :cond_0

    return v0

    :cond_0
    add-int/lit8 p3, p3, -0x1

    invoke-static {p0, p1, p2, p3, p4}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->getWordType(Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;IIII)I

    move-result v0

    goto :goto_0
.end method

.method private static final getWordType(Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;IIII)I
    .locals 0

    if-lt p3, p1, :cond_1

    if-lt p3, p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p3}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;->charAt(I)C

    move-result p0

    invoke-static {p0, p4}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->getWordType0(CI)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x2

    return p0
.end method

.method private static final getWordType0(CI)I
    .locals 3

    const/16 v0, 0x40

    invoke-static {p1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->isSet(II)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-nez v0, :cond_3

    const/16 v0, 0x20

    invoke-static {p1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->isSet(II)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "IsWord"

    invoke-static {p1, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getRange(Ljava/lang/String;Z)Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object p1

    invoke-virtual {p1, p0}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->match(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    invoke-static {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->isWordChar(I)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1

    :cond_3
    invoke-static {p0}, Ljava/lang/Character;->getType(C)I

    move-result p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    return v2

    :pswitch_1
    packed-switch p0, :pswitch_data_1

    return v0

    :pswitch_2
    return v2

    :pswitch_3
    return v0

    :pswitch_4
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x9
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private static final isEOLChar(I)Z
    .locals 1

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2028

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2029

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private static final isSet(II)Z
    .locals 0

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static final isWordChar(I)Z
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0x5f

    if-ne p0, v1, :cond_0

    return v0

    :cond_0
    const/16 v1, 0x30

    const/4 v2, 0x0

    if-ge p0, v1, :cond_1

    return v2

    :cond_1
    const/16 v1, 0x7a

    if-le p0, v1, :cond_2

    return v2

    :cond_2
    const/16 v1, 0x39

    if-gt p0, v1, :cond_3

    return v0

    :cond_3
    const/16 v1, 0x41

    if-ge p0, v1, :cond_4

    return v2

    :cond_4
    const/16 v1, 0x5a

    if-gt p0, v1, :cond_5

    return v0

    :cond_5
    const/16 v1, 0x61

    if-ge p0, v1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method private match(Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;Lmf/org/apache/xerces/impl/xpath/regex/Op;III)I
    .locals 22

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    iget-object v8, v7, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->target:Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;

    new-instance v9, Ljava/util/Stack;

    invoke-direct {v9}, Ljava/util/Stack;-><init>()V

    new-instance v10, Lmf/org/apache/xerces/util/IntStack;

    invoke-direct {v10}, Lmf/org/apache/xerces/util/IntStack;-><init>()V

    const/4 v0, 0x2

    move/from16 v1, p5

    invoke-static {v1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->isSet(II)Z

    move-result v11

    const/4 v12, 0x0

    move-object/from16 v13, p2

    move/from16 v14, p3

    move/from16 v5, p4

    move v15, v1

    move/from16 v16, v12

    :goto_0
    const/16 v17, -0x1

    const/16 v18, 0x1

    if-eqz v13, :cond_25

    iget v0, v7, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    if-gt v14, v0, :cond_25

    iget v0, v7, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    if-ge v14, v0, :cond_0

    goto/16 :goto_f

    :cond_0
    iget v0, v13, Lmf/org/apache/xerces/impl/xpath/regex/Op;->type:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown operation type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v13, Lmf/org/apache/xerces/impl/xpath/regex/Op;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    move-object v0, v13

    check-cast v0, Lmf/org/apache/xerces/impl/xpath/regex/Op$ConditionOp;

    iget v1, v0, Lmf/org/apache/xerces/impl/xpath/regex/Op$ConditionOp;->refNumber:I

    if-lez v1, :cond_4

    iget v1, v0, Lmf/org/apache/xerces/impl/xpath/regex/Op$ConditionOp;->refNumber:I

    iget v2, v6, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->nofparen:I

    if-ge v1, v2, :cond_3

    iget-object v1, v7, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    iget v2, v0, Lmf/org/apache/xerces/impl/xpath/regex/Op$ConditionOp;->refNumber:I

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->getBeginning(I)I

    move-result v1

    if-ltz v1, :cond_1

    iget-object v1, v7, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    iget v2, v0, Lmf/org/apache/xerces/impl/xpath/regex/Op$ConditionOp;->refNumber:I

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->getEnd(I)I

    move-result v1

    if-ltz v1, :cond_1

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xpath/regex/Op$ConditionOp;->yes:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-object v13, v0

    move/from16 v0, v17

    goto/16 :goto_11

    :cond_1
    iget-object v1, v0, Lmf/org/apache/xerces/impl/xpath/regex/Op$ConditionOp;->no:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    if-eqz v1, :cond_2

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xpath/regex/Op$ConditionOp;->no:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-object v13, v0

    move/from16 v0, v17

    goto/16 :goto_11

    :cond_2
    iget-object v0, v0, Lmf/org/apache/xerces/impl/xpath/regex/Op$ConditionOp;->next:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-object v13, v0

    move/from16 v0, v17

    goto/16 :goto_11

    :cond_3
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Internal Error: Reference number must be more than zero: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Lmf/org/apache/xerces/impl/xpath/regex/Op$ConditionOp;->refNumber:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    invoke-virtual {v9, v13}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v10, v14}, Lmf/org/apache/xerces/util/IntStack;->push(I)V

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xpath/regex/Op$ConditionOp;->condition:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-object v13, v0

    move/from16 v0, v17

    goto/16 :goto_11

    :pswitch_2
    invoke-virtual {v13}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->getData()I

    move-result v0

    or-int/2addr v0, v15

    invoke-virtual {v13}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->getData2()I

    move-result v1

    not-int v1, v1

    and-int/2addr v0, v1

    invoke-virtual {v9, v13}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v10, v15}, Lmf/org/apache/xerces/util/IntStack;->push(I)V

    invoke-virtual {v10, v14}, Lmf/org/apache/xerces/util/IntStack;->push(I)V

    invoke-virtual {v13}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->getChild()Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-result-object v1

    move v15, v0

    move-object v13, v1

    move/from16 v0, v17

    goto/16 :goto_11

    :pswitch_3
    invoke-virtual {v9, v13}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v10, v14}, Lmf/org/apache/xerces/util/IntStack;->push(I)V

    invoke-virtual {v13}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->getChild()Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-result-object v0

    move-object v13, v0

    move/from16 v0, v17

    goto/16 :goto_11

    :pswitch_4
    invoke-virtual {v9, v13}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v10, v5}, Lmf/org/apache/xerces/util/IntStack;->push(I)V

    invoke-virtual {v10, v14}, Lmf/org/apache/xerces/util/IntStack;->push(I)V

    iget v0, v13, Lmf/org/apache/xerces/impl/xpath/regex/Op;->type:I

    const/16 v1, 0x14

    if-eq v0, v1, :cond_6

    iget v0, v13, Lmf/org/apache/xerces/impl/xpath/regex/Op;->type:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_5

    goto :goto_1

    :cond_5
    move/from16 v0, v17

    goto :goto_2

    :cond_6
    :goto_1
    move/from16 v0, v18

    :goto_2
    invoke-virtual {v13}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->getChild()Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-result-object v1

    move v5, v0

    move-object v13, v1

    move/from16 v0, v17

    goto/16 :goto_11

    :pswitch_5
    invoke-virtual {v13}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->getData()I

    move-result v0

    if-lez v0, :cond_c

    iget v1, v6, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->nofparen:I

    if-ge v0, v1, :cond_c

    iget-object v1, v7, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->getBeginning(I)I

    move-result v1

    if-ltz v1, :cond_b

    iget-object v1, v7, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->getEnd(I)I

    move-result v1

    if-gez v1, :cond_7

    goto :goto_4

    :cond_7
    iget-object v1, v7, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->getBeginning(I)I

    move-result v4

    iget-object v1, v7, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->getEnd(I)I

    move-result v0

    sub-int v19, v0, v4

    if-lez v5, :cond_9

    iget v3, v7, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    move-object v0, v8

    move v1, v11

    move v2, v14

    move/from16 v20, v5

    move/from16 v5, v19

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;->regionMatches(ZIIII)Z

    move-result v0

    if-nez v0, :cond_8

    move/from16 v0, v17

    move/from16 v16, v18

    move/from16 v5, v20

    goto/16 :goto_11

    :cond_8
    add-int v14, v14, v19

    goto :goto_3

    :cond_9
    move/from16 v20, v5

    sub-int v21, v14, v19

    iget v3, v7, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    move-object v0, v8

    move v1, v11

    move/from16 v2, v21

    move/from16 v5, v19

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;->regionMatches(ZIIII)Z

    move-result v0

    if-nez v0, :cond_a

    move/from16 v0, v17

    move/from16 v16, v18

    move/from16 v5, v20

    goto/16 :goto_11

    :cond_a
    move/from16 v14, v21

    :goto_3
    iget-object v0, v13, Lmf/org/apache/xerces/impl/xpath/regex/Op;->next:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-object v13, v0

    move/from16 v0, v17

    move/from16 v5, v20

    goto/16 :goto_11

    :cond_b
    :goto_4
    move/from16 v20, v5

    move/from16 v0, v17

    move/from16 v16, v18

    move/from16 v5, v20

    goto/16 :goto_11

    :cond_c
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Internal Error: Reference number must be more than zero: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_6
    move/from16 v20, v5

    invoke-virtual {v13}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->getData()I

    move-result v0

    iget-object v1, v7, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    if-eqz v1, :cond_e

    if-lez v0, :cond_d

    iget-object v1, v7, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->getBeginning(I)I

    move-result v1

    invoke-virtual {v10, v1}, Lmf/org/apache/xerces/util/IntStack;->push(I)V

    iget-object v1, v7, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    invoke-virtual {v1, v0, v14}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setBeginning(II)V

    goto :goto_5

    :cond_d
    neg-int v0, v0

    iget-object v1, v7, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->getEnd(I)I

    move-result v1

    invoke-virtual {v10, v1}, Lmf/org/apache/xerces/util/IntStack;->push(I)V

    iget-object v1, v7, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    invoke-virtual {v1, v0, v14}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setEnd(II)V

    :goto_5
    invoke-virtual {v9, v13}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v10, v14}, Lmf/org/apache/xerces/util/IntStack;->push(I)V

    :cond_e
    iget-object v0, v13, Lmf/org/apache/xerces/impl/xpath/regex/Op;->next:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-object v13, v0

    move/from16 v0, v17

    move/from16 v5, v20

    goto/16 :goto_11

    :pswitch_7
    move/from16 v20, v5

    invoke-virtual {v13}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->size()I

    move-result v0

    if-nez v0, :cond_f

    move/from16 v0, v17

    move/from16 v16, v18

    move/from16 v5, v20

    goto/16 :goto_11

    :cond_f
    invoke-virtual {v9, v13}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v10, v12}, Lmf/org/apache/xerces/util/IntStack;->push(I)V

    invoke-virtual {v10, v14}, Lmf/org/apache/xerces/util/IntStack;->push(I)V

    invoke-virtual {v13, v12}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->elementAt(I)Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-result-object v0

    move-object v13, v0

    move/from16 v0, v17

    move/from16 v5, v20

    goto/16 :goto_11

    :pswitch_8
    move/from16 v20, v5

    goto :goto_6

    :pswitch_9
    move/from16 v20, v5

    invoke-virtual {v9, v13}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v10, v14}, Lmf/org/apache/xerces/util/IntStack;->push(I)V

    iget-object v0, v13, Lmf/org/apache/xerces/impl/xpath/regex/Op;->next:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-object v13, v0

    move/from16 v0, v17

    goto/16 :goto_11

    :pswitch_a
    move/from16 v20, v5

    invoke-virtual {v13}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->getData()I

    move-result v0

    iget-object v1, v7, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->closureContexts:[Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ClosureContext;

    aget-object v1, v1, v0

    invoke-virtual {v1, v14}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ClosureContext;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_10

    move/from16 v0, v17

    move/from16 v16, v18

    move/from16 v5, v20

    goto/16 :goto_11

    :cond_10
    iget-object v1, v7, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->closureContexts:[Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ClosureContext;

    aget-object v0, v1, v0

    invoke-virtual {v0, v14}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ClosureContext;->addOffset(I)V

    :goto_6
    invoke-virtual {v9, v13}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v10, v14}, Lmf/org/apache/xerces/util/IntStack;->push(I)V

    invoke-virtual {v13}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->getChild()Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-result-object v0

    move-object v13, v0

    move/from16 v0, v17

    move/from16 v5, v20

    goto/16 :goto_11

    :pswitch_b
    move/from16 v20, v5

    invoke-virtual {v13}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->getString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v20, :cond_12

    iget v3, v7, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    move-object v0, v8

    move v1, v11

    move v2, v14

    move/from16 v5, v19

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;->regionMatches(ZIILjava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_11

    move/from16 v0, v17

    move/from16 v16, v18

    move/from16 v5, v20

    goto/16 :goto_11

    :cond_11
    add-int v14, v14, v19

    goto :goto_7

    :cond_12
    sub-int v21, v14, v19

    iget v3, v7, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    move-object v0, v8

    move v1, v11

    move/from16 v2, v21

    move/from16 v5, v19

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;->regionMatches(ZIILjava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_13

    move/from16 v0, v17

    move/from16 v16, v18

    move/from16 v5, v20

    goto/16 :goto_11

    :cond_13
    move/from16 v14, v21

    :goto_7
    iget-object v0, v13, Lmf/org/apache/xerces/impl/xpath/regex/Op;->next:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-object v13, v0

    move/from16 v0, v17

    move/from16 v5, v20

    goto/16 :goto_11

    :pswitch_c
    move/from16 v20, v5

    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v13

    move-object/from16 v3, p1

    move v4, v14

    move v5, v15

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->matchAnchor(Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;Lmf/org/apache/xerces/impl/xpath/regex/Op;Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;II)Z

    move-result v0

    if-nez v0, :cond_14

    move/from16 v0, v17

    move/from16 v16, v18

    move/from16 v5, v20

    goto/16 :goto_11

    :cond_14
    iget-object v0, v13, Lmf/org/apache/xerces/impl/xpath/regex/Op;->next:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-object v13, v0

    move/from16 v0, v17

    move/from16 v5, v20

    goto/16 :goto_11

    :pswitch_d
    move/from16 v20, v5

    if-lez v20, :cond_15

    move v0, v14

    goto :goto_8

    :cond_15
    add-int/lit8 v0, v14, -0x1

    :goto_8
    iget v1, v7, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    if-ge v0, v1, :cond_1a

    if-gez v0, :cond_16

    goto :goto_9

    :cond_16
    invoke-virtual {v8, v14}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->isHighSurrogate(I)Z

    move-result v2

    if-eqz v2, :cond_17

    add-int v2, v0, v20

    iget v3, v7, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    if-ge v2, v3, :cond_17

    if-ltz v2, :cond_17

    invoke-virtual {v8, v2}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;->charAt(I)C

    move-result v0

    invoke-static {v1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->composeFromSurrogates(II)I

    move-result v1

    move v0, v2

    :cond_17
    invoke-virtual {v13}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->getToken()Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v2

    invoke-virtual {v2, v1}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->match(I)Z

    move-result v1

    if-nez v1, :cond_18

    move/from16 v0, v17

    move/from16 v16, v18

    move/from16 v5, v20

    goto/16 :goto_11

    :cond_18
    if-lez v20, :cond_19

    add-int/lit8 v0, v0, 0x1

    :cond_19
    iget-object v1, v13, Lmf/org/apache/xerces/impl/xpath/regex/Op;->next:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move v14, v0

    move-object v13, v1

    move/from16 v0, v17

    move/from16 v5, v20

    goto/16 :goto_11

    :cond_1a
    :goto_9
    move/from16 v0, v17

    move/from16 v16, v18

    move/from16 v5, v20

    goto/16 :goto_11

    :pswitch_e
    move/from16 v20, v5

    if-lez v20, :cond_1b

    move v0, v14

    goto :goto_a

    :cond_1b
    add-int/lit8 v0, v14, -0x1

    :goto_a
    iget v1, v7, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    if-ge v0, v1, :cond_1d

    if-ltz v0, :cond_1d

    invoke-virtual {v13}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->getData()I

    move-result v1

    invoke-virtual {v8, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;->charAt(I)C

    move-result v0

    invoke-direct {v6, v1, v0, v11}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->matchChar(IIZ)Z

    move-result v0

    if-nez v0, :cond_1c

    goto :goto_b

    :cond_1c
    add-int v14, v14, v20

    iget-object v0, v13, Lmf/org/apache/xerces/impl/xpath/regex/Op;->next:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-object v13, v0

    move/from16 v0, v17

    move/from16 v5, v20

    goto/16 :goto_11

    :cond_1d
    :goto_b
    move/from16 v0, v17

    move/from16 v16, v18

    move/from16 v5, v20

    goto/16 :goto_11

    :pswitch_f
    move/from16 v20, v5

    if-lez v20, :cond_1e

    move v0, v14

    goto :goto_c

    :cond_1e
    add-int/lit8 v0, v14, -0x1

    :goto_c
    iget v1, v7, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    if-ge v0, v1, :cond_24

    if-gez v0, :cond_1f

    goto :goto_e

    :cond_1f
    const/4 v1, 0x4

    invoke-static {v15, v1}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->isSet(II)Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-virtual {v8, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->isHighSurrogate(I)Z

    move-result v1

    if-eqz v1, :cond_22

    add-int v1, v0, v20

    if-ltz v1, :cond_22

    iget v2, v7, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    if-ge v1, v2, :cond_22

    move v0, v1

    goto :goto_d

    :cond_20
    invoke-virtual {v8, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->isHighSurrogate(I)Z

    move-result v2

    if-eqz v2, :cond_21

    add-int v2, v0, v20

    if-ltz v2, :cond_21

    iget v3, v7, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    if-ge v2, v3, :cond_21

    invoke-virtual {v8, v2}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;->charAt(I)C

    move-result v0

    invoke-static {v1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->composeFromSurrogates(II)I

    move-result v1

    move v0, v2

    :cond_21
    invoke-static {v1}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->isEOLChar(I)Z

    move-result v1

    if-eqz v1, :cond_22

    move/from16 v0, v17

    move/from16 v16, v18

    move/from16 v5, v20

    goto :goto_11

    :cond_22
    :goto_d
    if-lez v20, :cond_23

    add-int/lit8 v0, v0, 0x1

    :cond_23
    iget-object v1, v13, Lmf/org/apache/xerces/impl/xpath/regex/Op;->next:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move v14, v0

    move-object v13, v1

    move/from16 v0, v17

    move/from16 v5, v20

    goto :goto_11

    :cond_24
    :goto_e
    move/from16 v0, v17

    move/from16 v16, v18

    move/from16 v5, v20

    goto :goto_11

    :cond_25
    :goto_f
    move/from16 v20, v5

    if-nez v13, :cond_27

    const/16 v0, 0x200

    invoke-static {v15, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_26

    iget v0, v7, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    if-eq v14, v0, :cond_26

    move/from16 v0, v17

    goto :goto_10

    :cond_26
    move v0, v14

    goto :goto_10

    :cond_27
    move/from16 v0, v17

    :goto_10
    move/from16 v16, v18

    move/from16 v5, v20

    :cond_28
    :goto_11
    if-nez v16, :cond_29

    goto/16 :goto_0

    :cond_29
    invoke-virtual {v9}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2a

    return v0

    :cond_2a
    invoke-virtual {v9}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lmf/org/apache/xerces/impl/xpath/regex/Op;

    invoke-virtual {v10}, Lmf/org/apache/xerces/util/IntStack;->pop()I

    move-result v14

    iget v1, v13, Lmf/org/apache/xerces/impl/xpath/regex/Op;->type:I

    const/16 v2, 0xf

    if-eq v1, v2, :cond_30

    packed-switch v1, :pswitch_data_1

    packed-switch v1, :pswitch_data_2

    goto :goto_11

    :pswitch_10
    check-cast v13, Lmf/org/apache/xerces/impl/xpath/regex/Op$ConditionOp;

    if-ltz v0, :cond_2b

    iget-object v1, v13, Lmf/org/apache/xerces/impl/xpath/regex/Op$ConditionOp;->yes:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-object v13, v1

    goto :goto_12

    :cond_2b
    iget-object v1, v13, Lmf/org/apache/xerces/impl/xpath/regex/Op$ConditionOp;->no:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    if-eqz v1, :cond_2c

    iget-object v1, v13, Lmf/org/apache/xerces/impl/xpath/regex/Op$ConditionOp;->no:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-object v13, v1

    goto :goto_12

    :cond_2c
    iget-object v1, v13, Lmf/org/apache/xerces/impl/xpath/regex/Op$ConditionOp;->next:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-object v13, v1

    :goto_12
    move/from16 v16, v12

    goto :goto_11

    :pswitch_11
    invoke-virtual {v10}, Lmf/org/apache/xerces/util/IntStack;->pop()I

    move-result v15

    :pswitch_12
    if-ltz v0, :cond_28

    iget-object v13, v13, Lmf/org/apache/xerces/impl/xpath/regex/Op;->next:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move v14, v0

    move/from16 v16, v12

    goto :goto_11

    :pswitch_13
    invoke-virtual {v10}, Lmf/org/apache/xerces/util/IntStack;->pop()I

    move-result v5

    if-gez v0, :cond_2d

    iget-object v0, v13, Lmf/org/apache/xerces/impl/xpath/regex/Op;->next:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-object v13, v0

    move/from16 v16, v12

    :cond_2d
    move/from16 v0, v17

    goto :goto_11

    :pswitch_14
    invoke-virtual {v10}, Lmf/org/apache/xerces/util/IntStack;->pop()I

    move-result v5

    if-ltz v0, :cond_2e

    iget-object v0, v13, Lmf/org/apache/xerces/impl/xpath/regex/Op;->next:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-object v13, v0

    move/from16 v16, v12

    :cond_2e
    move/from16 v0, v17

    goto :goto_11

    :pswitch_15
    invoke-virtual {v10}, Lmf/org/apache/xerces/util/IntStack;->pop()I

    move-result v1

    if-gez v0, :cond_28

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v13}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->size()I

    move-result v2

    if-ge v1, v2, :cond_2f

    invoke-virtual {v9, v13}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v10, v1}, Lmf/org/apache/xerces/util/IntStack;->push(I)V

    invoke-virtual {v10, v14}, Lmf/org/apache/xerces/util/IntStack;->push(I)V

    invoke-virtual {v13, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->elementAt(I)Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-result-object v13

    move/from16 v16, v12

    goto :goto_11

    :cond_2f
    move/from16 v0, v17

    goto/16 :goto_11

    :pswitch_16
    if-gez v0, :cond_28

    invoke-virtual {v13}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->getChild()Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-result-object v13

    move/from16 v16, v12

    goto/16 :goto_11

    :pswitch_17
    if-gez v0, :cond_28

    iget-object v13, v13, Lmf/org/apache/xerces/impl/xpath/regex/Op;->next:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move/from16 v16, v12

    goto/16 :goto_11

    :cond_30
    invoke-virtual {v13}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->getData()I

    move-result v1

    invoke-virtual {v10}, Lmf/org/apache/xerces/util/IntStack;->pop()I

    move-result v2

    if-gez v0, :cond_28

    if-lez v1, :cond_31

    iget-object v3, v7, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    invoke-virtual {v3, v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setBeginning(II)V

    goto/16 :goto_11

    :cond_31
    iget-object v3, v7, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    neg-int v1, v1

    invoke-virtual {v3, v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setEnd(II)V

    goto/16 :goto_11

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_0
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_9
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7
        :pswitch_17
        :pswitch_16
        :pswitch_17
        :pswitch_16
        :pswitch_15
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x14
        :pswitch_14
        :pswitch_13
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method

.method private matchChar(IIZ)Z
    .locals 0

    if-eqz p3, :cond_0

    invoke-static {p1, p2}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->matchIgnoreCase(II)Z

    move-result p1

    goto :goto_0

    :cond_0
    if-ne p1, p2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private static final matchIgnoreCase(II)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    const v2, 0xffff

    if-gt p0, v2, :cond_4

    if-le p1, v2, :cond_1

    goto :goto_0

    :cond_1
    int-to-char p0, p0

    invoke-static {p0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p0

    int-to-char p1, p1

    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p1

    if-ne p0, p1, :cond_2

    return v0

    :cond_2
    invoke-static {p0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p0

    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    if-ne p0, p1, :cond_3

    return v0

    :cond_3
    return v1

    :cond_4
    :goto_0
    return v1
.end method

.method private setPattern(Ljava/lang/String;ILjava/util/Locale;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->regex:Ljava/lang/String;

    iput p2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    iget p1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    const/16 p2, 0x200

    invoke-static {p1, p2}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->isSet(II)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;

    invoke-direct {p1, p3}, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;-><init>(Ljava/util/Locale;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;

    invoke-direct {p1, p3}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;-><init>(Ljava/util/Locale;)V

    :goto_0
    iget-object p2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->regex:Ljava/lang/String;

    iget p3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    invoke-virtual {p1, p2, p3}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->parse(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object p2

    iput-object p2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->tokentree:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    iget p2, p1, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->parennumber:I

    iput p2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->nofparen:I

    iget-boolean p1, p1, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->hasBackReferences:Z

    iput-boolean p1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->hasBackReferences:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->context:Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;

    if-nez v1, :cond_1

    return v0

    :cond_1
    check-cast p1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->regex:Ljava/lang/String;

    iget-object v2, p1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->regex:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    iget p1, p1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    if-ne v1, p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v0
.end method

.method equals(Ljava/lang/String;I)Z
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->regex:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getNumberOfGroups()I
    .locals 1

    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->nofparen:I

    return v0
.end method

.method public getOptions()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    invoke-static {v0}, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->createOptionString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPattern()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->regex:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->regex:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->getOptions()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method matchAnchor(Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;Lmf/org/apache/xerces/impl/xpath/regex/Op;Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;II)Z
    .locals 7

    invoke-virtual {p2}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->getData()I

    move-result p2

    const/16 v0, 0x24

    const/16 v1, 0xa

    const/16 v2, 0xd

    const/16 v3, 0x8

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq p2, v0, :cond_15

    const/16 v0, 0x3c

    const/4 v6, 0x2

    if-eq p2, v0, :cond_11

    const/16 v0, 0x3e

    if-eq p2, v0, :cond_d

    const/16 v0, 0x5a

    if-eq p2, v0, :cond_a

    const/16 v0, 0x5e

    if-eq p2, v0, :cond_7

    const/16 v0, 0x62

    if-eq p2, v0, :cond_4

    const/16 v0, 0x7a

    if-eq p2, v0, :cond_3

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    iget p2, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->length:I

    if-nez p2, :cond_0

    move p1, v4

    goto :goto_0

    :cond_0
    iget p2, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    iget v0, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    invoke-static {p1, p2, v0, p4, p5}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->getWordType(Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;IIII)I

    move-result p2

    if-eqz p2, :cond_1

    iget v0, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    iget p3, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    invoke-static {p1, v0, p3, p4, p5}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->getPreviousWordType(Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;IIII)I

    move-result p1

    if-eq p2, p1, :cond_1

    move p1, v5

    goto :goto_0

    :cond_1
    move p1, v4

    :goto_0
    if-nez p1, :cond_1a

    return v5

    :pswitch_1
    iget p1, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    if-eq p4, p1, :cond_1a

    return v5

    :pswitch_2
    iget p2, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    if-eq p4, p2, :cond_1a

    iget p2, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    if-le p4, p2, :cond_2

    sub-int/2addr p4, v4

    invoke-virtual {p1, p4}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;->charAt(I)C

    move-result p1

    invoke-static {p1}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->isEOLChar(I)Z

    move-result p1

    if-nez p1, :cond_1a

    :cond_2
    return v5

    :cond_3
    iget p1, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    if-eq p4, p1, :cond_1a

    return v5

    :cond_4
    iget p2, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->length:I

    if-nez p2, :cond_5

    return v5

    :cond_5
    iget p2, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    iget v0, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    invoke-static {p1, p2, v0, p4, p5}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->getWordType(Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;IIII)I

    move-result p2

    if-nez p2, :cond_6

    return v5

    :cond_6
    iget v0, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    iget p3, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    invoke-static {p1, v0, p3, p4, p5}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->getPreviousWordType(Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;IIII)I

    move-result p1

    if-ne p2, p1, :cond_1a

    return v5

    :cond_7
    invoke-static {p5, v3}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->isSet(II)Z

    move-result p2

    if-eqz p2, :cond_9

    iget p2, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    if-eq p4, p2, :cond_1a

    iget p2, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    if-le p4, p2, :cond_8

    iget p2, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    if-ge p4, p2, :cond_8

    sub-int/2addr p4, v4

    invoke-virtual {p1, p4}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;->charAt(I)C

    move-result p1

    invoke-static {p1}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->isEOLChar(I)Z

    move-result p1

    if-nez p1, :cond_1a

    :cond_8
    return v5

    :cond_9
    iget p1, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    if-eq p4, p1, :cond_1a

    return v5

    :cond_a
    iget p2, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    if-eq p4, p2, :cond_1a

    add-int/lit8 p2, p4, 0x1

    iget p5, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    if-ne p2, p5, :cond_b

    invoke-virtual {p1, p4}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;->charAt(I)C

    move-result p5

    invoke-static {p5}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->isEOLChar(I)Z

    move-result p5

    if-nez p5, :cond_1a

    :cond_b
    add-int/lit8 p5, p4, 0x2

    iget p3, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    if-ne p5, p3, :cond_c

    invoke-virtual {p1, p4}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;->charAt(I)C

    move-result p3

    if-ne p3, v2, :cond_c

    invoke-virtual {p1, p2}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;->charAt(I)C

    move-result p1

    if-eq p1, v1, :cond_1a

    :cond_c
    return v5

    :cond_d
    iget p2, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->length:I

    if-eqz p2, :cond_10

    iget p2, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    if-ne p4, p2, :cond_e

    goto :goto_1

    :cond_e
    iget p2, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    iget v0, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    invoke-static {p1, p2, v0, p4, p5}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->getWordType(Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;IIII)I

    move-result p2

    if-ne p2, v6, :cond_f

    iget p2, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    iget p3, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    invoke-static {p1, p2, p3, p4, p5}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->getPreviousWordType(Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;IIII)I

    move-result p1

    if-eq p1, v4, :cond_1a

    :cond_f
    return v5

    :cond_10
    :goto_1
    return v5

    :cond_11
    iget p2, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->length:I

    if-eqz p2, :cond_14

    iget p2, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    if-ne p4, p2, :cond_12

    goto :goto_2

    :cond_12
    iget p2, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    iget v0, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    invoke-static {p1, p2, v0, p4, p5}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->getWordType(Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;IIII)I

    move-result p2

    if-ne p2, v4, :cond_13

    iget p2, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    iget p3, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    invoke-static {p1, p2, p3, p4, p5}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->getPreviousWordType(Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;IIII)I

    move-result p1

    if-eq p1, v6, :cond_1a

    :cond_13
    return v5

    :cond_14
    :goto_2
    return v5

    :cond_15
    invoke-static {p5, v3}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->isSet(II)Z

    move-result p2

    if-eqz p2, :cond_17

    iget p2, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    if-eq p4, p2, :cond_1a

    iget p2, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    if-ge p4, p2, :cond_16

    invoke-virtual {p1, p4}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;->charAt(I)C

    move-result p1

    invoke-static {p1}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->isEOLChar(I)Z

    move-result p1

    if-nez p1, :cond_1a

    :cond_16
    return v5

    :cond_17
    iget p2, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    if-eq p4, p2, :cond_1a

    add-int/lit8 p2, p4, 0x1

    iget p5, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    if-ne p2, p5, :cond_18

    invoke-virtual {p1, p4}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;->charAt(I)C

    move-result p5

    invoke-static {p5}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->isEOLChar(I)Z

    move-result p5

    if-nez p5, :cond_1a

    :cond_18
    add-int/lit8 p5, p4, 0x2

    iget p3, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    if-ne p5, p3, :cond_19

    invoke-virtual {p1, p4}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;->charAt(I)C

    move-result p3

    if-ne p3, v2, :cond_19

    invoke-virtual {p1, p2}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;->charAt(I)C

    move-result p1

    if-eq p1, v1, :cond_1a

    :cond_19
    return v5

    :cond_1a
    :goto_3
    return v4

    :pswitch_data_0
    .packed-switch 0x40
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public matches(Ljava/lang/String;)Z
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v0, v2}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->matches(Ljava/lang/String;IILmf/org/apache/xerces/impl/xpath/regex/Match;)Z

    move-result p1

    return p1
.end method

.method public matches(Ljava/lang/String;II)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->matches(Ljava/lang/String;IILmf/org/apache/xerces/impl/xpath/regex/Match;)Z

    move-result p1

    return p1
.end method

.method public matches(Ljava/lang/String;IILmf/org/apache/xerces/impl/xpath/regex/Match;)Z
    .locals 10

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->prepare()V

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->context:Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;

    if-nez v0, :cond_1

    new-instance v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->context:Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->context:Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->context:Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;

    iget-boolean v1, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->inuse:Z

    if-eqz v1, :cond_2

    new-instance v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;

    invoke-direct {v1}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;-><init>()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->context:Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;

    :goto_0
    iget v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->numberOfClosures:I

    invoke-virtual {v1, p1, p2, p3, v2}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->reset(Ljava/lang/String;III)V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p4, :cond_3

    iget p2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->nofparen:I

    invoke-virtual {p4, p2}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setNumberOfGroups(I)V

    invoke-virtual {p4, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setSource(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-boolean p2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->hasBackReferences:Z

    if-eqz p2, :cond_4

    new-instance p4, Lmf/org/apache/xerces/impl/xpath/regex/Match;

    invoke-direct {p4}, Lmf/org/apache/xerces/impl/xpath/regex/Match;-><init>()V

    iget p2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->nofparen:I

    invoke-virtual {p4, p2}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setNumberOfGroups(I)V

    :cond_4
    :goto_1
    iput-object p4, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    iget p2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    const/16 p3, 0x200

    invoke-static {p2, p3}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->isSet(II)Z

    move-result p2

    const/4 p3, 0x1

    const/4 p4, 0x0

    if-eqz p2, :cond_7

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    iget v5, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    const/4 v6, 0x1

    iget v7, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    move-object v2, p0

    move-object v3, v1

    invoke-direct/range {v2 .. v7}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->match(Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;Lmf/org/apache/xerces/impl/xpath/regex/Op;III)I

    move-result p1

    iget p2, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    if-ne p1, p2, :cond_6

    iget-object p2, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    if-eqz p2, :cond_5

    iget-object p2, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    iget v0, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    invoke-virtual {p2, p4, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setBeginning(II)V

    iget-object p2, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    invoke-virtual {p2, p4, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setEnd(II)V

    :cond_5
    invoke-virtual {v1, p4}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->setInUse(Z)V

    return p3

    :cond_6
    return p4

    :cond_7
    iget-boolean p2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedStringOnly:Z

    if-eqz p2, :cond_a

    iget-object p2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedStringTable:Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;

    iget v0, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    iget v2, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    invoke-virtual {p2, p1, v0, v2}, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->matches(Ljava/lang/String;II)I

    move-result p1

    if-ltz p1, :cond_9

    iget-object p2, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    if-eqz p2, :cond_8

    iget-object p2, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    invoke-virtual {p2, p4, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setBeginning(II)V

    iget-object p2, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p1, v0

    invoke-virtual {p2, p4, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setEnd(II)V

    :cond_8
    invoke-virtual {v1, p4}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->setInUse(Z)V

    return p3

    :cond_9
    invoke-virtual {v1, p4}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->setInUse(Z)V

    return p4

    :cond_a
    iget-object p2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedString:Ljava/lang/String;

    if-eqz p2, :cond_b

    iget-object p2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedStringTable:Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;

    iget v0, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    iget v2, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    invoke-virtual {p2, p1, v0, v2}, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->matches(Ljava/lang/String;II)I

    move-result p2

    if-gez p2, :cond_b

    invoke-virtual {v1, p4}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->setInUse(Z)V

    return p4

    :cond_b
    iget p2, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->minlength:I

    sub-int/2addr p2, v0

    const/4 v0, -0x1

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    if-eqz v2, :cond_11

    iget v2, v2, Lmf/org/apache/xerces/impl/xpath/regex/Op;->type:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_11

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->getChild()Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-result-object v2

    iget v2, v2, Lmf/org/apache/xerces/impl/xpath/regex/Op;->type:I

    if-nez v2, :cond_11

    iget v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->isSet(II)Z

    move-result v2

    if-eqz v2, :cond_c

    iget p1, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    iget v5, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    const/4 v6, 0x1

    iget v7, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    move-object v2, p0

    move-object v3, v1

    invoke-direct/range {v2 .. v7}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->match(Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;Lmf/org/apache/xerces/impl/xpath/regex/Op;III)I

    move-result p2

    move v0, p1

    move v2, p2

    goto/16 :goto_7

    :cond_c
    iget v2, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    move v3, v0

    move v0, v2

    move v2, p3

    :goto_2
    if-le v0, p2, :cond_d

    move v2, v3

    goto/16 :goto_7

    :cond_d
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->isEOLChar(I)Z

    move-result v4

    if-eqz v4, :cond_e

    move v2, p3

    goto :goto_3

    :cond_e
    if-eqz v2, :cond_f

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    const/4 v6, 0x1

    iget v7, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    move-object v2, p0

    move-object v3, v1

    move v5, v0

    invoke-direct/range {v2 .. v7}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->match(Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;Lmf/org/apache/xerces/impl/xpath/regex/Op;III)I

    move-result v2

    if-ltz v2, :cond_10

    goto/16 :goto_7

    :cond_f
    move v2, v3

    :cond_10
    move v3, v2

    move v2, p4

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_11
    iget-object v8, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->firstChar:Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    if-eqz v8, :cond_16

    iget v2, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    move v9, v2

    move v2, v0

    move v0, v9

    :goto_4
    if-le v0, p2, :cond_12

    goto :goto_7

    :cond_12
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->isHighSurrogate(I)Z

    move-result v4

    if-eqz v4, :cond_13

    add-int/lit8 v4, v0, 0x1

    iget v5, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    if-ge v4, v5, :cond_13

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v3, v4}, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->composeFromSurrogates(II)I

    move-result v3

    :cond_13
    invoke-virtual {v8, v3}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->match(I)Z

    move-result v3

    if-nez v3, :cond_14

    goto :goto_5

    :cond_14
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    const/4 v6, 0x1

    iget v7, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    move-object v2, p0

    move-object v3, v1

    move v5, v0

    invoke-direct/range {v2 .. v7}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->match(Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;Lmf/org/apache/xerces/impl/xpath/regex/Op;III)I

    move-result v2

    if-ltz v2, :cond_15

    goto :goto_7

    :cond_15
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_16
    iget p1, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    :goto_6
    if-le p1, p2, :cond_17

    move v2, v0

    move v0, p1

    goto :goto_7

    :cond_17
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    const/4 v6, 0x1

    iget v7, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    move-object v2, p0

    move-object v3, v1

    move v5, p1

    invoke-direct/range {v2 .. v7}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->match(Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;Lmf/org/apache/xerces/impl/xpath/regex/Op;III)I

    move-result v0

    if-ltz v0, :cond_1a

    move v2, v0

    move v0, p1

    :goto_7
    if-ltz v2, :cond_19

    iget-object p1, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    if-eqz p1, :cond_18

    iget-object p1, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    invoke-virtual {p1, p4, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setBeginning(II)V

    iget-object p1, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    invoke-virtual {p1, p4, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setEnd(II)V

    :cond_18
    invoke-virtual {v1, p4}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->setInUse(Z)V

    return p3

    :cond_19
    invoke-virtual {v1, p4}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->setInUse(Z)V

    return p4

    :cond_1a
    add-int/lit8 p1, p1, 0x1

    goto :goto_6

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public matches(Ljava/lang/String;Lmf/org/apache/xerces/impl/xpath/regex/Match;)Z
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, p2}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->matches(Ljava/lang/String;IILmf/org/apache/xerces/impl/xpath/regex/Match;)Z

    move-result p1

    return p1
.end method

.method public matches(Ljava/text/CharacterIterator;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->matches(Ljava/text/CharacterIterator;Lmf/org/apache/xerces/impl/xpath/regex/Match;)Z

    move-result p1

    return p1
.end method

.method public matches(Ljava/text/CharacterIterator;Lmf/org/apache/xerces/impl/xpath/regex/Match;)Z
    .locals 12

    invoke-interface {p1}, Ljava/text/CharacterIterator;->getBeginIndex()I

    move-result v0

    invoke-interface {p1}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result v1

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->prepare()V

    :cond_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->context:Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;

    if-nez v2, :cond_1

    new-instance v2, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;-><init>()V

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->context:Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->context:Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;

    monitor-enter v2

    :try_start_1
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->context:Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;

    iget-boolean v3, v3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->inuse:Z

    if-eqz v3, :cond_2

    new-instance v3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;

    invoke-direct {v3}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;-><init>()V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->context:Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;

    :goto_0
    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->numberOfClosures:I

    invoke-virtual {v3, p1, v0, v1, v4}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->reset(Ljava/text/CharacterIterator;III)V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_3

    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->nofparen:I

    invoke-virtual {p2, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setNumberOfGroups(I)V

    invoke-virtual {p2, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setSource(Ljava/text/CharacterIterator;)V

    goto :goto_1

    :cond_3
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->hasBackReferences:Z

    if-eqz v0, :cond_4

    new-instance p2, Lmf/org/apache/xerces/impl/xpath/regex/Match;

    invoke-direct {p2}, Lmf/org/apache/xerces/impl/xpath/regex/Match;-><init>()V

    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->nofparen:I

    invoke-virtual {p2, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setNumberOfGroups(I)V

    :cond_4
    :goto_1
    iput-object p2, v3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    iget p2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    const/16 v0, 0x200

    invoke-static {p2, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->isSet(II)Z

    move-result p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_7

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    iget v7, v3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    const/4 v8, 0x1

    iget v9, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    move-object v4, p0

    move-object v5, v3

    invoke-direct/range {v4 .. v9}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->match(Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;Lmf/org/apache/xerces/impl/xpath/regex/Op;III)I

    move-result p1

    iget p2, v3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    if-ne p1, p2, :cond_6

    iget-object p2, v3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    if-eqz p2, :cond_5

    iget-object p2, v3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    iget v2, v3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    invoke-virtual {p2, v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setBeginning(II)V

    iget-object p2, v3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    invoke-virtual {p2, v1, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setEnd(II)V

    :cond_5
    invoke-virtual {v3, v1}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->setInUse(Z)V

    return v0

    :cond_6
    return v1

    :cond_7
    iget-boolean p2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedStringOnly:Z

    if-eqz p2, :cond_a

    iget-object p2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedStringTable:Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;

    iget v2, v3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    iget v4, v3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    invoke-virtual {p2, p1, v2, v4}, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->matches(Ljava/text/CharacterIterator;II)I

    move-result p1

    if-ltz p1, :cond_9

    iget-object p2, v3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    if-eqz p2, :cond_8

    iget-object p2, v3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    invoke-virtual {p2, v1, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setBeginning(II)V

    iget-object p2, v3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr p1, v2

    invoke-virtual {p2, v1, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setEnd(II)V

    :cond_8
    invoke-virtual {v3, v1}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->setInUse(Z)V

    return v0

    :cond_9
    invoke-virtual {v3, v1}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->setInUse(Z)V

    return v1

    :cond_a
    iget-object p2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedString:Ljava/lang/String;

    if-eqz p2, :cond_b

    iget-object p2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedStringTable:Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;

    iget v2, v3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    iget v4, v3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    invoke-virtual {p2, p1, v2, v4}, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->matches(Ljava/text/CharacterIterator;II)I

    move-result p2

    if-gez p2, :cond_b

    invoke-virtual {v3, v1}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->setInUse(Z)V

    return v1

    :cond_b
    iget p2, v3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    iget v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->minlength:I

    sub-int/2addr p2, v2

    const/4 v2, -0x1

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    if-eqz v4, :cond_11

    iget v4, v4, Lmf/org/apache/xerces/impl/xpath/regex/Op;->type:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_11

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->getChild()Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-result-object v4

    iget v4, v4, Lmf/org/apache/xerces/impl/xpath/regex/Op;->type:I

    if-nez v4, :cond_11

    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    const/4 v5, 0x4

    invoke-static {v4, v5}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->isSet(II)Z

    move-result v4

    if-eqz v4, :cond_c

    iget p1, v3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    iget v7, v3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    const/4 v8, 0x1

    iget v9, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    move-object v4, p0

    move-object v5, v3

    invoke-direct/range {v4 .. v9}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->match(Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;Lmf/org/apache/xerces/impl/xpath/regex/Op;III)I

    move-result p2

    move v2, p1

    move v4, p2

    goto/16 :goto_7

    :cond_c
    iget v4, v3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    move v5, v2

    move v2, v4

    move v4, v0

    :goto_2
    if-le v2, p2, :cond_d

    move v4, v5

    goto/16 :goto_7

    :cond_d
    invoke-interface {p1, v2}, Ljava/text/CharacterIterator;->setIndex(I)C

    move-result v6

    invoke-static {v6}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->isEOLChar(I)Z

    move-result v6

    if-eqz v6, :cond_e

    move v4, v0

    goto :goto_3

    :cond_e
    if-eqz v4, :cond_f

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    const/4 v8, 0x1

    iget v9, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    move-object v4, p0

    move-object v5, v3

    move v7, v2

    invoke-direct/range {v4 .. v9}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->match(Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;Lmf/org/apache/xerces/impl/xpath/regex/Op;III)I

    move-result v4

    if-ltz v4, :cond_10

    goto/16 :goto_7

    :cond_f
    move v4, v5

    :cond_10
    move v5, v4

    move v4, v1

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_11
    iget-object v10, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->firstChar:Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    if-eqz v10, :cond_16

    iget v4, v3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    move v11, v4

    move v4, v2

    move v2, v11

    :goto_4
    if-le v2, p2, :cond_12

    goto :goto_7

    :cond_12
    invoke-interface {p1, v2}, Ljava/text/CharacterIterator;->setIndex(I)C

    move-result v5

    invoke-static {v5}, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->isHighSurrogate(I)Z

    move-result v6

    if-eqz v6, :cond_13

    add-int/lit8 v6, v2, 0x1

    iget v7, v3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    if-ge v6, v7, :cond_13

    invoke-interface {p1, v6}, Ljava/text/CharacterIterator;->setIndex(I)C

    move-result v6

    invoke-static {v5, v6}, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->composeFromSurrogates(II)I

    move-result v5

    :cond_13
    invoke-virtual {v10, v5}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->match(I)Z

    move-result v5

    if-nez v5, :cond_14

    goto :goto_5

    :cond_14
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    const/4 v8, 0x1

    iget v9, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    move-object v4, p0

    move-object v5, v3

    move v7, v2

    invoke-direct/range {v4 .. v9}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->match(Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;Lmf/org/apache/xerces/impl/xpath/regex/Op;III)I

    move-result v4

    if-ltz v4, :cond_15

    goto :goto_7

    :cond_15
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_16
    iget p1, v3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    :goto_6
    if-le p1, p2, :cond_17

    move v4, v2

    move v2, p1

    goto :goto_7

    :cond_17
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    const/4 v8, 0x1

    iget v9, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    move-object v4, p0

    move-object v5, v3

    move v7, p1

    invoke-direct/range {v4 .. v9}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->match(Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;Lmf/org/apache/xerces/impl/xpath/regex/Op;III)I

    move-result v2

    if-ltz v2, :cond_1a

    move v4, v2

    move v2, p1

    :goto_7
    if-ltz v4, :cond_19

    iget-object p1, v3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    if-eqz p1, :cond_18

    iget-object p1, v3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    invoke-virtual {p1, v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setBeginning(II)V

    iget-object p1, v3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    invoke-virtual {p1, v1, v4}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setEnd(II)V

    :cond_18
    invoke-virtual {v3, v1}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->setInUse(Z)V

    return v0

    :cond_19
    invoke-virtual {v3, v1}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->setInUse(Z)V

    return v1

    :cond_1a
    add-int/lit8 p1, p1, 0x1

    goto :goto_6

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public matches([C)Z
    .locals 3

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v0, v2}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->matches([CIILmf/org/apache/xerces/impl/xpath/regex/Match;)Z

    move-result p1

    return p1
.end method

.method public matches([CII)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->matches([CIILmf/org/apache/xerces/impl/xpath/regex/Match;)Z

    move-result p1

    return p1
.end method

.method public matches([CIILmf/org/apache/xerces/impl/xpath/regex/Match;)Z
    .locals 10

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->prepare()V

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->context:Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;

    if-nez v0, :cond_1

    new-instance v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->context:Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->context:Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->context:Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;

    iget-boolean v1, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->inuse:Z

    if-eqz v1, :cond_2

    new-instance v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;

    invoke-direct {v1}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;-><init>()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->context:Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;

    :goto_0
    iget v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->numberOfClosures:I

    invoke-virtual {v1, p1, p2, p3, v2}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->reset([CIII)V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p4, :cond_3

    iget p2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->nofparen:I

    invoke-virtual {p4, p2}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setNumberOfGroups(I)V

    invoke-virtual {p4, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setSource([C)V

    goto :goto_1

    :cond_3
    iget-boolean p2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->hasBackReferences:Z

    if-eqz p2, :cond_4

    new-instance p4, Lmf/org/apache/xerces/impl/xpath/regex/Match;

    invoke-direct {p4}, Lmf/org/apache/xerces/impl/xpath/regex/Match;-><init>()V

    iget p2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->nofparen:I

    invoke-virtual {p4, p2}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setNumberOfGroups(I)V

    :cond_4
    :goto_1
    iput-object p4, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    iget p2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    const/16 p3, 0x200

    invoke-static {p2, p3}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->isSet(II)Z

    move-result p2

    const/4 p3, 0x1

    const/4 p4, 0x0

    if-eqz p2, :cond_7

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    iget v5, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    const/4 v6, 0x1

    iget v7, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    move-object v2, p0

    move-object v3, v1

    invoke-direct/range {v2 .. v7}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->match(Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;Lmf/org/apache/xerces/impl/xpath/regex/Op;III)I

    move-result p1

    iget p2, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    if-ne p1, p2, :cond_6

    iget-object p2, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    if-eqz p2, :cond_5

    iget-object p2, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    iget v0, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    invoke-virtual {p2, p4, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setBeginning(II)V

    iget-object p2, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    invoke-virtual {p2, p4, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setEnd(II)V

    :cond_5
    invoke-virtual {v1, p4}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->setInUse(Z)V

    return p3

    :cond_6
    return p4

    :cond_7
    iget-boolean p2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedStringOnly:Z

    if-eqz p2, :cond_a

    iget-object p2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedStringTable:Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;

    iget v0, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    iget v2, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    invoke-virtual {p2, p1, v0, v2}, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->matches([CII)I

    move-result p1

    if-ltz p1, :cond_9

    iget-object p2, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    if-eqz p2, :cond_8

    iget-object p2, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    invoke-virtual {p2, p4, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setBeginning(II)V

    iget-object p2, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p1, v0

    invoke-virtual {p2, p4, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setEnd(II)V

    :cond_8
    invoke-virtual {v1, p4}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->setInUse(Z)V

    return p3

    :cond_9
    invoke-virtual {v1, p4}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->setInUse(Z)V

    return p4

    :cond_a
    iget-object p2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedString:Ljava/lang/String;

    if-eqz p2, :cond_b

    iget-object p2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedStringTable:Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;

    iget v0, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    iget v2, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    invoke-virtual {p2, p1, v0, v2}, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->matches([CII)I

    move-result p2

    if-gez p2, :cond_b

    invoke-virtual {v1, p4}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->setInUse(Z)V

    return p4

    :cond_b
    iget p2, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->minlength:I

    sub-int/2addr p2, v0

    const/4 v0, -0x1

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    if-eqz v2, :cond_11

    iget v2, v2, Lmf/org/apache/xerces/impl/xpath/regex/Op;->type:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_11

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->getChild()Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-result-object v2

    iget v2, v2, Lmf/org/apache/xerces/impl/xpath/regex/Op;->type:I

    if-nez v2, :cond_11

    iget v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->isSet(II)Z

    move-result v2

    if-eqz v2, :cond_c

    iget p1, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    iget v5, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    const/4 v6, 0x1

    iget v7, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    move-object v2, p0

    move-object v3, v1

    invoke-direct/range {v2 .. v7}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->match(Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;Lmf/org/apache/xerces/impl/xpath/regex/Op;III)I

    move-result p2

    move v0, p1

    move v2, p2

    goto/16 :goto_7

    :cond_c
    iget v2, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    move v3, v0

    move v0, v2

    move v2, p3

    :goto_2
    if-le v0, p2, :cond_d

    move v2, v3

    goto/16 :goto_7

    :cond_d
    aget-char v4, p1, v0

    invoke-static {v4}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->isEOLChar(I)Z

    move-result v4

    if-eqz v4, :cond_e

    move v2, p3

    goto :goto_3

    :cond_e
    if-eqz v2, :cond_f

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    const/4 v6, 0x1

    iget v7, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    move-object v2, p0

    move-object v3, v1

    move v5, v0

    invoke-direct/range {v2 .. v7}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->match(Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;Lmf/org/apache/xerces/impl/xpath/regex/Op;III)I

    move-result v2

    if-ltz v2, :cond_10

    goto/16 :goto_7

    :cond_f
    move v2, v3

    :cond_10
    move v3, v2

    move v2, p4

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_11
    iget-object v8, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->firstChar:Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    if-eqz v8, :cond_16

    iget v2, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    move v9, v2

    move v2, v0

    move v0, v9

    :goto_4
    if-le v0, p2, :cond_12

    goto :goto_7

    :cond_12
    aget-char v3, p1, v0

    invoke-static {v3}, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->isHighSurrogate(I)Z

    move-result v4

    if-eqz v4, :cond_13

    add-int/lit8 v4, v0, 0x1

    iget v5, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    if-ge v4, v5, :cond_13

    aget-char v4, p1, v4

    invoke-static {v3, v4}, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->composeFromSurrogates(II)I

    move-result v3

    :cond_13
    invoke-virtual {v8, v3}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->match(I)Z

    move-result v3

    if-nez v3, :cond_14

    goto :goto_5

    :cond_14
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    const/4 v6, 0x1

    iget v7, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    move-object v2, p0

    move-object v3, v1

    move v5, v0

    invoke-direct/range {v2 .. v7}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->match(Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;Lmf/org/apache/xerces/impl/xpath/regex/Op;III)I

    move-result v2

    if-ltz v2, :cond_15

    goto :goto_7

    :cond_15
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_16
    iget p1, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    :goto_6
    if-le p1, p2, :cond_17

    move v2, v0

    move v0, p1

    goto :goto_7

    :cond_17
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    const/4 v6, 0x1

    iget v7, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    move-object v2, p0

    move-object v3, v1

    move v5, p1

    invoke-direct/range {v2 .. v7}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->match(Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;Lmf/org/apache/xerces/impl/xpath/regex/Op;III)I

    move-result v0

    if-ltz v0, :cond_1a

    move v2, v0

    move v0, p1

    :goto_7
    if-ltz v2, :cond_19

    iget-object p1, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    if-eqz p1, :cond_18

    iget-object p1, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    invoke-virtual {p1, p4, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setBeginning(II)V

    iget-object p1, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    invoke-virtual {p1, p4, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setEnd(II)V

    :cond_18
    invoke-virtual {v1, p4}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->setInUse(Z)V

    return p3

    :cond_19
    invoke-virtual {v1, p4}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->setInUse(Z)V

    return p4

    :cond_1a
    add-int/lit8 p1, p1, 0x1

    goto :goto_6

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public matches([CLmf/org/apache/xerces/impl/xpath/regex/Match;)Z
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, p2}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->matches([CIILmf/org/apache/xerces/impl/xpath/regex/Match;)Z

    move-result p1

    return p1
.end method

.method prepare()V
    .locals 7

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->tokentree:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->compile(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->tokentree:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getMinLength()I

    move-result v0

    iput v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->minlength:I

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->firstChar:Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    iget v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    const/16 v2, 0x80

    invoke-static {v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->isSet(II)Z

    move-result v1

    const/16 v2, 0x200

    const/4 v3, 0x1

    if-nez v1, :cond_0

    iget v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    invoke-static {v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->isSet(II)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createRange()Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v1

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->tokentree:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    iget v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    invoke-virtual {v4, v1, v5}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->analyzeFirstCharacter(Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;I)I

    move-result v4

    if-ne v4, v3, :cond_0

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->compactRanges()V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->firstChar:Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    const/4 v4, 0x2

    const/16 v5, 0x100

    if-eqz v1, :cond_4

    iget v1, v1, Lmf/org/apache/xerces/impl/xpath/regex/Op;->type:I

    const/4 v6, 0x6

    if-eq v1, v6, :cond_1

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    iget v1, v1, Lmf/org/apache/xerces/impl/xpath/regex/Op;->type:I

    if-ne v1, v3, :cond_4

    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/xpath/regex/Op;->next:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    if-nez v1, :cond_4

    iput-boolean v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedStringOnly:Z

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    iget v0, v0, Lmf/org/apache/xerces/impl/xpath/regex/Op;->type:I

    if-ne v0, v6, :cond_2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedString:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->getData()I

    move-result v0

    const/high16 v1, 0x10000

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->getData()I

    move-result v0

    invoke-static {v0}, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->decomposeToSurrogates(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedString:Ljava/lang/String;

    goto :goto_0

    :cond_3
    new-array v0, v3, [C

    const/4 v1, 0x0

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->getData()I

    move-result v2

    int-to-char v2, v2

    aput-char v2, v0, v1

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedString:Ljava/lang/String;

    :goto_0
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    iput v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedStringOptions:I

    new-instance v0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedString:Ljava/lang/String;

    iget v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedStringOptions:I

    invoke-static {v2, v4}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->isSet(II)Z

    move-result v2

    invoke-direct {v0, v1, v5, v2}, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;-><init>(Ljava/lang/String;IZ)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedStringTable:Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;

    goto :goto_2

    :cond_4
    iget v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    invoke-static {v1, v5}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->isSet(II)Z

    move-result v1

    if-nez v1, :cond_7

    iget v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    invoke-static {v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->isSet(II)Z

    move-result v1

    if-nez v1, :cond_7

    new-instance v1, Lmf/org/apache/xerces/impl/xpath/regex/Token$FixedStringContainer;

    invoke-direct {v1}, Lmf/org/apache/xerces/impl/xpath/regex/Token$FixedStringContainer;-><init>()V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->tokentree:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    iget v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    invoke-virtual {v2, v1, v3}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->findFixedString(Lmf/org/apache/xerces/impl/xpath/regex/Token$FixedStringContainer;I)V

    iget-object v2, v1, Lmf/org/apache/xerces/impl/xpath/regex/Token$FixedStringContainer;->token:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    if-nez v2, :cond_5

    move-object v2, v0

    goto :goto_1

    :cond_5
    iget-object v2, v1, Lmf/org/apache/xerces/impl/xpath/regex/Token$FixedStringContainer;->token:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    iput-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedString:Ljava/lang/String;

    iget v1, v1, Lmf/org/apache/xerces/impl/xpath/regex/Token$FixedStringContainer;->options:I

    iput v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedStringOptions:I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedString:Ljava/lang/String;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v4, :cond_6

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedString:Ljava/lang/String;

    :cond_6
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedString:Ljava/lang/String;

    if-eqz v0, :cond_7

    new-instance v1, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;

    iget v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedStringOptions:I

    invoke-static {v2, v4}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->isSet(II)Z

    move-result v2

    invoke-direct {v1, v0, v5, v2}, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;-><init>(Ljava/lang/String;IZ)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedStringTable:Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;

    :cond_7
    :goto_2
    return-void
.end method

.method public setPattern(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->setPattern(Ljava/lang/String;Ljava/util/Locale;)V

    return-void
.end method

.method public setPattern(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->setPattern(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)V

    return-void
.end method

.method public setPattern(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    invoke-static {p2}, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->parseOptions(Ljava/lang/String;)I

    move-result p2

    invoke-direct {p0, p1, p2, p3}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->setPattern(Ljava/lang/String;ILjava/util/Locale;)V

    return-void
.end method

.method public setPattern(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    invoke-direct {p0, p1, v0, p2}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->setPattern(Ljava/lang/String;ILjava/util/Locale;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->tokentree:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    iget v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
