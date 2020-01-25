.class Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;
.super Ljava/lang/Object;
.source "XPath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/xpath/XPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Scanner"
.end annotation


# static fields
.field private static final CHARTYPE_ATSIGN:B = 0x13t

.field private static final CHARTYPE_CLOSE_BRACKET:B = 0x16t

.field private static final CHARTYPE_CLOSE_PAREN:B = 0x7t

.field private static final CHARTYPE_COLON:B = 0xft

.field private static final CHARTYPE_COMMA:B = 0xat

.field private static final CHARTYPE_DIGIT:B = 0xet

.field private static final CHARTYPE_DOLLAR:B = 0x5t

.field private static final CHARTYPE_EQUAL:B = 0x11t

.field private static final CHARTYPE_EXCLAMATION:B = 0x3t

.field private static final CHARTYPE_GREATER:B = 0x12t

.field private static final CHARTYPE_INVALID:B = 0x0t

.field private static final CHARTYPE_LESS:B = 0x10t

.field private static final CHARTYPE_LETTER:B = 0x14t

.field private static final CHARTYPE_MINUS:B = 0xbt

.field private static final CHARTYPE_NONASCII:B = 0x19t

.field private static final CHARTYPE_OPEN_BRACKET:B = 0x15t

.field private static final CHARTYPE_OPEN_PAREN:B = 0x6t

.field private static final CHARTYPE_OTHER:B = 0x1t

.field private static final CHARTYPE_PERIOD:B = 0xct

.field private static final CHARTYPE_PLUS:B = 0x9t

.field private static final CHARTYPE_QUOTE:B = 0x4t

.field private static final CHARTYPE_SLASH:B = 0xdt

.field private static final CHARTYPE_STAR:B = 0x8t

.field private static final CHARTYPE_UNDERSCORE:B = 0x17t

.field private static final CHARTYPE_UNION:B = 0x18t

.field private static final CHARTYPE_WHITESPACE:B = 0x2t

.field private static final fASCIICharMap:[B

.field private static final fAncestorOrSelfSymbol:Ljava/lang/String;

.field private static final fAncestorSymbol:Ljava/lang/String;

.field private static final fAndSymbol:Ljava/lang/String;

.field private static final fAttributeSymbol:Ljava/lang/String;

.field private static final fChildSymbol:Ljava/lang/String;

.field private static final fCommentSymbol:Ljava/lang/String;

.field private static final fDescendantOrSelfSymbol:Ljava/lang/String;

.field private static final fDescendantSymbol:Ljava/lang/String;

.field private static final fDivSymbol:Ljava/lang/String;

.field private static final fFollowingSiblingSymbol:Ljava/lang/String;

.field private static final fFollowingSymbol:Ljava/lang/String;

.field private static final fModSymbol:Ljava/lang/String;

.field private static final fNamespaceSymbol:Ljava/lang/String;

.field private static final fNodeSymbol:Ljava/lang/String;

.field private static final fOrSymbol:Ljava/lang/String;

.field private static final fPISymbol:Ljava/lang/String;

.field private static final fParentSymbol:Ljava/lang/String;

.field private static final fPrecedingSiblingSymbol:Ljava/lang/String;

.field private static final fPrecedingSymbol:Ljava/lang/String;

.field private static final fSelfSymbol:Ljava/lang/String;

.field private static final fTextSymbol:Ljava/lang/String;


# instance fields
.field private fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/16 v0, 0x80

    new-array v0, v0, [B

    const/16 v1, 0x9

    const/4 v2, 0x2

    aput-byte v2, v0, v1

    const/16 v3, 0xa

    aput-byte v2, v0, v3

    const/16 v4, 0xd

    aput-byte v2, v0, v4

    const/16 v5, 0x20

    aput-byte v2, v0, v5

    const/16 v2, 0x21

    const/4 v5, 0x3

    aput-byte v5, v0, v2

    const/4 v2, 0x4

    const/16 v5, 0x22

    aput-byte v2, v0, v5

    const/4 v5, 0x1

    const/16 v6, 0x23

    aput-byte v5, v0, v6

    const/16 v6, 0x24

    const/4 v7, 0x5

    aput-byte v7, v0, v6

    const/16 v6, 0x25

    aput-byte v5, v0, v6

    const/16 v6, 0x26

    aput-byte v5, v0, v6

    const/16 v6, 0x27

    aput-byte v2, v0, v6

    const/16 v2, 0x28

    const/4 v6, 0x6

    aput-byte v6, v0, v2

    const/16 v2, 0x29

    const/4 v6, 0x7

    aput-byte v6, v0, v2

    const/16 v2, 0x2a

    const/16 v6, 0x8

    aput-byte v6, v0, v2

    const/16 v2, 0x2b

    aput-byte v1, v0, v2

    const/16 v1, 0x2c

    aput-byte v3, v0, v1

    const/16 v1, 0x2d

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x2e

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x2f

    aput-byte v4, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x30

    aput-byte v1, v0, v2

    const/16 v2, 0x31

    aput-byte v1, v0, v2

    const/16 v2, 0x32

    aput-byte v1, v0, v2

    const/16 v2, 0x33

    aput-byte v1, v0, v2

    const/16 v2, 0x34

    aput-byte v1, v0, v2

    const/16 v2, 0x35

    aput-byte v1, v0, v2

    const/16 v2, 0x36

    aput-byte v1, v0, v2

    const/16 v2, 0x37

    aput-byte v1, v0, v2

    const/16 v2, 0x38

    aput-byte v1, v0, v2

    const/16 v2, 0x39

    aput-byte v1, v0, v2

    const/16 v1, 0x3a

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x3b

    aput-byte v5, v0, v1

    const/16 v1, 0x3c

    const/16 v2, 0x10

    aput-byte v2, v0, v1

    const/16 v1, 0x3d

    const/16 v2, 0x11

    aput-byte v2, v0, v1

    const/16 v1, 0x3e

    const/16 v2, 0x12

    aput-byte v2, v0, v1

    const/16 v1, 0x3f

    aput-byte v5, v0, v1

    const/16 v1, 0x40

    const/16 v2, 0x13

    aput-byte v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0x41

    aput-byte v1, v0, v2

    const/16 v2, 0x42

    aput-byte v1, v0, v2

    const/16 v2, 0x43

    aput-byte v1, v0, v2

    const/16 v2, 0x44

    aput-byte v1, v0, v2

    const/16 v2, 0x45

    aput-byte v1, v0, v2

    const/16 v2, 0x46

    aput-byte v1, v0, v2

    const/16 v2, 0x47

    aput-byte v1, v0, v2

    const/16 v2, 0x48

    aput-byte v1, v0, v2

    const/16 v2, 0x49

    aput-byte v1, v0, v2

    const/16 v2, 0x4a

    aput-byte v1, v0, v2

    const/16 v2, 0x4b

    aput-byte v1, v0, v2

    const/16 v2, 0x4c

    aput-byte v1, v0, v2

    const/16 v2, 0x4d

    aput-byte v1, v0, v2

    const/16 v2, 0x4e

    aput-byte v1, v0, v2

    const/16 v2, 0x4f

    aput-byte v1, v0, v2

    const/16 v2, 0x50

    aput-byte v1, v0, v2

    const/16 v2, 0x51

    aput-byte v1, v0, v2

    const/16 v2, 0x52

    aput-byte v1, v0, v2

    const/16 v2, 0x53

    aput-byte v1, v0, v2

    const/16 v2, 0x54

    aput-byte v1, v0, v2

    const/16 v2, 0x55

    aput-byte v1, v0, v2

    const/16 v2, 0x56

    aput-byte v1, v0, v2

    const/16 v2, 0x57

    aput-byte v1, v0, v2

    const/16 v2, 0x58

    aput-byte v1, v0, v2

    const/16 v2, 0x59

    aput-byte v1, v0, v2

    const/16 v2, 0x5a

    aput-byte v1, v0, v2

    const/16 v2, 0x5b

    const/16 v3, 0x15

    aput-byte v3, v0, v2

    const/16 v2, 0x5c

    aput-byte v5, v0, v2

    const/16 v2, 0x5d

    const/16 v3, 0x16

    aput-byte v3, v0, v2

    const/16 v2, 0x5e

    aput-byte v5, v0, v2

    const/16 v2, 0x5f

    const/16 v3, 0x17

    aput-byte v3, v0, v2

    const/16 v2, 0x60

    aput-byte v5, v0, v2

    const/16 v2, 0x61

    aput-byte v1, v0, v2

    const/16 v2, 0x62

    aput-byte v1, v0, v2

    const/16 v2, 0x63

    aput-byte v1, v0, v2

    const/16 v2, 0x64

    aput-byte v1, v0, v2

    const/16 v2, 0x65

    aput-byte v1, v0, v2

    const/16 v2, 0x66

    aput-byte v1, v0, v2

    const/16 v2, 0x67

    aput-byte v1, v0, v2

    const/16 v2, 0x68

    aput-byte v1, v0, v2

    const/16 v2, 0x69

    aput-byte v1, v0, v2

    const/16 v2, 0x6a

    aput-byte v1, v0, v2

    const/16 v2, 0x6b

    aput-byte v1, v0, v2

    const/16 v2, 0x6c

    aput-byte v1, v0, v2

    const/16 v2, 0x6d

    aput-byte v1, v0, v2

    const/16 v2, 0x6e

    aput-byte v1, v0, v2

    const/16 v2, 0x6f

    aput-byte v1, v0, v2

    const/16 v2, 0x70

    aput-byte v1, v0, v2

    const/16 v2, 0x71

    aput-byte v1, v0, v2

    const/16 v2, 0x72

    aput-byte v1, v0, v2

    const/16 v2, 0x73

    aput-byte v1, v0, v2

    const/16 v2, 0x74

    aput-byte v1, v0, v2

    const/16 v2, 0x75

    aput-byte v1, v0, v2

    const/16 v2, 0x76

    aput-byte v1, v0, v2

    const/16 v2, 0x77

    aput-byte v1, v0, v2

    const/16 v2, 0x78

    aput-byte v1, v0, v2

    const/16 v2, 0x79

    aput-byte v1, v0, v2

    const/16 v2, 0x7a

    aput-byte v1, v0, v2

    const/16 v1, 0x7b

    aput-byte v5, v0, v1

    const/16 v1, 0x7c

    const/16 v2, 0x18

    aput-byte v2, v0, v1

    const/16 v1, 0x7d

    aput-byte v5, v0, v1

    const/16 v1, 0x7e

    aput-byte v5, v0, v1

    const/16 v1, 0x7f

    aput-byte v5, v0, v1

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fASCIICharMap:[B

    const-string v0, "and"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fAndSymbol:Ljava/lang/String;

    const-string v0, "or"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fOrSymbol:Ljava/lang/String;

    const-string v0, "mod"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fModSymbol:Ljava/lang/String;

    const-string v0, "div"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fDivSymbol:Ljava/lang/String;

    const-string v0, "comment"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fCommentSymbol:Ljava/lang/String;

    const-string v0, "text"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fTextSymbol:Ljava/lang/String;

    const-string v0, "processing-instruction"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fPISymbol:Ljava/lang/String;

    const-string v0, "node"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fNodeSymbol:Ljava/lang/String;

    const-string v0, "ancestor"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fAncestorSymbol:Ljava/lang/String;

    const-string v0, "ancestor-or-self"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fAncestorOrSelfSymbol:Ljava/lang/String;

    const-string v0, "attribute"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fAttributeSymbol:Ljava/lang/String;

    const-string v0, "child"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fChildSymbol:Ljava/lang/String;

    const-string v0, "descendant"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fDescendantSymbol:Ljava/lang/String;

    const-string v0, "descendant-or-self"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fDescendantOrSelfSymbol:Ljava/lang/String;

    const-string v0, "following"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fFollowingSymbol:Ljava/lang/String;

    const-string v0, "following-sibling"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fFollowingSiblingSymbol:Ljava/lang/String;

    const-string v0, "namespace"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fNamespaceSymbol:Ljava/lang/String;

    const-string v0, "parent"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fParentSymbol:Ljava/lang/String;

    const-string v0, "preceding"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fPrecedingSymbol:Ljava/lang/String;

    const-string v0, "preceding-sibling"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fPrecedingSiblingSymbol:Ljava/lang/String;

    const-string v0, "self"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fSelfSymbol:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    return-void
.end method

.method private scanNumber(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;Ljava/lang/String;II)I
    .locals 6

    invoke-virtual {p2, p4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v1, 0x0

    move v2, p4

    move p4, v1

    :goto_0
    const/16 v3, 0x39

    const/16 v4, 0x30

    if-lt v0, v4, :cond_2

    if-le v0, v3, :cond_0

    goto :goto_1

    :cond_0
    mul-int/lit8 p4, p4, 0xa

    add-int/lit8 v5, v0, -0x30

    add-int/2addr p4, v5

    add-int/lit8 v2, v2, 0x1

    if-ne v2, p3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0

    :cond_2
    :goto_1
    const/16 v5, 0x2e

    if-ne v0, v5, :cond_7

    add-int/lit8 v2, v2, 0x1

    if-ge v2, p3, :cond_7

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_2
    if-lt v0, v4, :cond_5

    if-le v0, v3, :cond_3

    goto :goto_3

    :cond_3
    mul-int/lit8 v1, v1, 0xa

    add-int/lit8 v0, v0, -0x30

    add-int/2addr v1, v0

    add-int/lit8 v2, v2, 0x1

    if-ne v2, p3, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_2

    :cond_5
    :goto_3
    if-nez v1, :cond_6

    goto :goto_4

    :cond_6
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "find a solution!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    :goto_4
    invoke-virtual {p1, p4}, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->addToken(I)V

    invoke-virtual {p1, v1}, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->addToken(I)V

    return v2
.end method


# virtual methods
.method protected addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/XPathException;
        }
    .end annotation

    invoke-virtual {p1, p2}, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->addToken(I)V

    return-void
.end method

.method public scanExpr(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;Ljava/lang/String;II)Z
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/XPathException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p5

    const/4 v5, 0x0

    const/4 v6, 0x1

    move/from16 v7, p4

    move v8, v5

    :goto_0
    if-ne v7, v4, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v9

    :goto_1
    const/16 v10, 0xd

    const/16 v11, 0x9

    const/16 v12, 0xa

    const/16 v13, 0x20

    if-eq v9, v13, :cond_1

    if-eq v9, v12, :cond_1

    if-eq v9, v11, :cond_1

    if-eq v9, v10, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v7, v7, 0x1

    if-ne v7, v4, :cond_4d

    :goto_2
    if-ne v7, v4, :cond_2

    :goto_3
    return v6

    :cond_2
    const/16 v14, 0x80

    if-lt v9, v14, :cond_3

    const/16 v14, 0x19

    goto :goto_4

    :cond_3
    sget-object v14, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fASCIICharMap:[B

    aget-byte v14, v14, v9

    :goto_4
    const/16 v16, -0x1

    const/16 v15, 0x3a

    packed-switch v14, :pswitch_data_0

    return v5

    :pswitch_0
    const/16 v8, 0x17

    invoke-virtual {v0, v2, v8}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_15

    :pswitch_1
    const/4 v8, 0x3

    invoke-virtual {v0, v2, v8}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_14

    :pswitch_2
    const/4 v8, 0x2

    invoke-virtual {v0, v2, v8}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_15

    :pswitch_3
    invoke-virtual {v0, v3, v4, v7}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->scanNCName(Ljava/lang/String;II)I

    move-result v9

    if-ne v9, v7, :cond_4

    return v5

    :cond_4
    if-ge v9, v4, :cond_5

    invoke-virtual {v3, v9}, Ljava/lang/String;->charAt(I)C

    move-result v14

    goto :goto_5

    :cond_5
    move/from16 v14, v16

    :goto_5
    invoke-virtual {v3, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sget-object v17, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-ne v14, v15, :cond_d

    add-int/lit8 v9, v9, 0x1

    if-ne v9, v4, :cond_6

    return v5

    :cond_6
    invoke-virtual {v3, v9}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v6, 0x2a

    if-ne v14, v6, :cond_8

    add-int/lit8 v9, v9, 0x1

    if-ge v9, v4, :cond_7

    invoke-virtual {v3, v9}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move v14, v6

    :cond_7
    move/from16 v16, v5

    move-object/from16 v15, v17

    const/4 v6, 0x1

    goto :goto_7

    :cond_8
    if-ne v14, v15, :cond_a

    add-int/lit8 v9, v9, 0x1

    if-ge v9, v4, :cond_9

    invoke-virtual {v3, v9}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move v14, v6

    :cond_9
    move v6, v5

    move-object/from16 v15, v17

    const/16 v16, 0x1

    goto :goto_7

    :cond_a
    invoke-virtual {v0, v3, v4, v9}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->scanNCName(Ljava/lang/String;II)I

    move-result v6

    if-ne v6, v9, :cond_b

    return v5

    :cond_b
    if-ge v6, v4, :cond_c

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v16

    move/from16 v14, v16

    goto :goto_6

    :cond_c
    move/from16 v14, v16

    :goto_6
    invoke-virtual {v3, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move/from16 v16, v5

    move-object v15, v7

    move-object v7, v9

    move v9, v6

    move/from16 v6, v16

    goto :goto_7

    :cond_d
    move v6, v5

    move/from16 v16, v6

    move-object/from16 v15, v17

    :goto_7
    if-eq v14, v13, :cond_e

    if-eq v14, v12, :cond_e

    if-eq v14, v11, :cond_e

    if-eq v14, v10, :cond_e

    goto :goto_8

    :cond_e
    add-int/lit8 v9, v9, 0x1

    if-ne v9, v4, :cond_2d

    :goto_8
    if-eqz v8, :cond_15

    sget-object v8, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fAndSymbol:Ljava/lang/String;

    if-ne v7, v8, :cond_f

    const/16 v7, 0x10

    invoke-virtual {v0, v2, v7}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    goto :goto_9

    :cond_f
    sget-object v8, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fOrSymbol:Ljava/lang/String;

    if-ne v7, v8, :cond_10

    const/16 v7, 0x11

    invoke-virtual {v0, v2, v7}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    goto :goto_9

    :cond_10
    sget-object v8, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fModSymbol:Ljava/lang/String;

    if-ne v7, v8, :cond_11

    const/16 v7, 0x12

    invoke-virtual {v0, v2, v7}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    goto :goto_9

    :cond_11
    sget-object v8, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fDivSymbol:Ljava/lang/String;

    if-ne v7, v8, :cond_14

    const/16 v7, 0x13

    invoke-virtual {v0, v2, v7}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    :goto_9
    if-eqz v6, :cond_12

    return v5

    :cond_12
    if-eqz v16, :cond_13

    return v5

    :cond_13
    move v8, v5

    move v7, v9

    const/4 v6, 0x1

    goto/16 :goto_0

    :cond_14
    return v5

    :cond_15
    const/16 v8, 0x28

    if-ne v14, v8, :cond_1a

    if-nez v6, :cond_1a

    if-nez v16, :cond_1a

    sget-object v6, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fCommentSymbol:Ljava/lang/String;

    if-ne v7, v6, :cond_16

    const/16 v6, 0xc

    invoke-virtual {v0, v2, v6}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    goto :goto_a

    :cond_16
    sget-object v6, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fTextSymbol:Ljava/lang/String;

    if-ne v7, v6, :cond_17

    invoke-virtual {v0, v2, v10}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    goto :goto_a

    :cond_17
    sget-object v6, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fPISymbol:Ljava/lang/String;

    if-ne v7, v6, :cond_18

    const/16 v6, 0xe

    invoke-virtual {v0, v2, v6}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    goto :goto_a

    :cond_18
    sget-object v6, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fNodeSymbol:Ljava/lang/String;

    if-ne v7, v6, :cond_19

    const/16 v6, 0xf

    invoke-virtual {v0, v2, v6}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    goto :goto_a

    :cond_19
    invoke-virtual {v0, v2, v13}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    invoke-virtual {v2, v15}, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->addToken(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->addToken(Ljava/lang/String;)V

    :goto_a
    invoke-virtual {v0, v2, v5}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    add-int/lit8 v7, v9, 0x1

    goto/16 :goto_11

    :cond_1a
    if-nez v16, :cond_1d

    const/16 v8, 0x3a

    if-ne v14, v8, :cond_1b

    add-int/lit8 v10, v9, 0x1

    if-ge v10, v4, :cond_1b

    invoke-virtual {v3, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v10, v8, :cond_1b

    goto :goto_b

    :cond_1b
    if-eqz v6, :cond_1c

    invoke-virtual {v0, v2, v12}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    invoke-virtual {v2, v7}, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->addToken(Ljava/lang/String;)V

    move v7, v9

    const/4 v6, 0x1

    const/4 v8, 0x1

    goto/16 :goto_0

    :cond_1c
    const/16 v6, 0xb

    invoke-virtual {v0, v2, v6}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    invoke-virtual {v2, v15}, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->addToken(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->addToken(Ljava/lang/String;)V

    move v7, v9

    const/4 v6, 0x1

    const/4 v8, 0x1

    goto/16 :goto_0

    :cond_1d
    :goto_b
    sget-object v8, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fAncestorSymbol:Ljava/lang/String;

    if-ne v7, v8, :cond_1e

    const/16 v7, 0x21

    invoke-virtual {v0, v2, v7}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    goto/16 :goto_c

    :cond_1e
    sget-object v8, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fAncestorOrSelfSymbol:Ljava/lang/String;

    if-ne v7, v8, :cond_1f

    const/16 v7, 0x22

    invoke-virtual {v0, v2, v7}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    goto/16 :goto_c

    :cond_1f
    sget-object v8, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fAttributeSymbol:Ljava/lang/String;

    if-ne v7, v8, :cond_20

    const/16 v7, 0x23

    invoke-virtual {v0, v2, v7}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    goto/16 :goto_c

    :cond_20
    sget-object v8, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fChildSymbol:Ljava/lang/String;

    if-ne v7, v8, :cond_21

    const/16 v7, 0x24

    invoke-virtual {v0, v2, v7}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    goto :goto_c

    :cond_21
    sget-object v8, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fDescendantSymbol:Ljava/lang/String;

    if-ne v7, v8, :cond_22

    const/16 v7, 0x25

    invoke-virtual {v0, v2, v7}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    goto :goto_c

    :cond_22
    sget-object v8, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fDescendantOrSelfSymbol:Ljava/lang/String;

    if-ne v7, v8, :cond_23

    const/16 v7, 0x26

    invoke-virtual {v0, v2, v7}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    goto :goto_c

    :cond_23
    sget-object v8, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fFollowingSymbol:Ljava/lang/String;

    if-ne v7, v8, :cond_24

    const/16 v7, 0x27

    invoke-virtual {v0, v2, v7}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    goto :goto_c

    :cond_24
    sget-object v8, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fFollowingSiblingSymbol:Ljava/lang/String;

    if-ne v7, v8, :cond_25

    const/16 v7, 0x28

    invoke-virtual {v0, v2, v7}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    goto :goto_c

    :cond_25
    sget-object v8, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fNamespaceSymbol:Ljava/lang/String;

    if-ne v7, v8, :cond_26

    const/16 v7, 0x29

    invoke-virtual {v0, v2, v7}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    goto :goto_c

    :cond_26
    sget-object v8, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fParentSymbol:Ljava/lang/String;

    if-ne v7, v8, :cond_27

    const/16 v7, 0x2a

    invoke-virtual {v0, v2, v7}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    goto :goto_c

    :cond_27
    sget-object v8, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fPrecedingSymbol:Ljava/lang/String;

    if-ne v7, v8, :cond_28

    const/16 v7, 0x2b

    invoke-virtual {v0, v2, v7}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    goto :goto_c

    :cond_28
    sget-object v8, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fPrecedingSiblingSymbol:Ljava/lang/String;

    if-ne v7, v8, :cond_29

    const/16 v7, 0x2c

    invoke-virtual {v0, v2, v7}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    goto :goto_c

    :cond_29
    sget-object v8, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fSelfSymbol:Ljava/lang/String;

    if-ne v7, v8, :cond_2c

    const/16 v7, 0x2d

    invoke-virtual {v0, v2, v7}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    :goto_c
    if-eqz v6, :cond_2a

    return v5

    :cond_2a
    const/16 v6, 0x8

    invoke-virtual {v0, v2, v6}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    if-nez v16, :cond_2b

    add-int/lit8 v9, v9, 0x1

    const/4 v6, 0x1

    add-int/lit8 v7, v9, 0x1

    goto/16 :goto_11

    :cond_2b
    move v8, v5

    move v7, v9

    const/4 v6, 0x1

    goto/16 :goto_0

    :cond_2c
    return v5

    :cond_2d
    invoke-virtual {v3, v9}, Ljava/lang/String;->charAt(I)C

    move-result v14

    goto/16 :goto_7

    :pswitch_4
    const/4 v6, 0x6

    invoke-virtual {v0, v2, v6}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_11

    :pswitch_5
    add-int/lit8 v7, v7, 0x1

    if-ne v7, v4, :cond_2e

    const/16 v6, 0x1e

    invoke-virtual {v0, v2, v6}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    move v8, v5

    const/4 v6, 0x1

    goto/16 :goto_0

    :cond_2e
    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v8, 0x3d

    if-ne v6, v8, :cond_2f

    const/16 v6, 0x1f

    invoke-virtual {v0, v2, v6}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_11

    :cond_2f
    const/16 v6, 0x1e

    invoke-virtual {v0, v2, v6}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    move v8, v5

    const/4 v6, 0x1

    goto/16 :goto_0

    :pswitch_6
    const/16 v6, 0x1a

    invoke-virtual {v0, v2, v6}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_11

    :pswitch_7
    add-int/lit8 v7, v7, 0x1

    if-ne v7, v4, :cond_30

    const/16 v6, 0x1c

    invoke-virtual {v0, v2, v6}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    move v8, v5

    const/4 v6, 0x1

    goto/16 :goto_0

    :cond_30
    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v8, 0x3d

    if-ne v6, v8, :cond_31

    const/16 v6, 0x1d

    invoke-virtual {v0, v2, v6}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_11

    :cond_31
    const/16 v6, 0x1c

    invoke-virtual {v0, v2, v6}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    move v8, v5

    const/4 v6, 0x1

    goto/16 :goto_0

    :pswitch_8
    add-int/lit8 v7, v7, 0x1

    if-ne v7, v4, :cond_32

    return v5

    :cond_32
    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v8, 0x3a

    if-eq v6, v8, :cond_33

    return v5

    :cond_33
    const/16 v6, 0x8

    invoke-virtual {v0, v2, v6}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_11

    :pswitch_9
    const/16 v6, 0x2f

    invoke-virtual {v0, v2, v6}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    invoke-direct {v0, v2, v3, v4, v7}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->scanNumber(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;Ljava/lang/String;II)I

    move-result v7

    const/4 v6, 0x1

    const/4 v8, 0x1

    goto/16 :goto_0

    :pswitch_a
    const/16 v6, 0x2f

    add-int/lit8 v7, v7, 0x1

    const/16 v8, 0x15

    if-ne v7, v4, :cond_34

    invoke-virtual {v0, v2, v8}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    move v8, v5

    const/4 v6, 0x1

    goto/16 :goto_0

    :cond_34
    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v6, :cond_35

    const/16 v6, 0x16

    invoke-virtual {v0, v2, v6}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_11

    :cond_35
    invoke-virtual {v0, v2, v8}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    move v8, v5

    const/4 v6, 0x1

    goto/16 :goto_0

    :pswitch_b
    add-int/lit8 v6, v7, 0x1

    const/4 v8, 0x4

    if-ne v6, v4, :cond_36

    invoke-virtual {v0, v2, v8}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    move v7, v6

    const/4 v6, 0x1

    const/4 v8, 0x1

    goto/16 :goto_0

    :cond_36
    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v14, 0x2e

    if-ne v9, v14, :cond_37

    const/4 v6, 0x5

    invoke-virtual {v0, v2, v6}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    add-int/lit8 v7, v7, 0x2

    goto :goto_d

    :cond_37
    const/16 v14, 0x30

    if-lt v9, v14, :cond_38

    const/16 v14, 0x39

    if-gt v9, v14, :cond_38

    const/16 v14, 0x2f

    invoke-virtual {v0, v2, v14}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    invoke-direct {v0, v2, v3, v4, v7}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->scanNumber(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;Ljava/lang/String;II)I

    move-result v6

    move v7, v6

    goto :goto_d

    :cond_38
    const/16 v14, 0x2f

    if-ne v9, v14, :cond_39

    invoke-virtual {v0, v2, v8}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    move v7, v6

    :goto_d
    const/4 v6, 0x1

    const/4 v8, 0x1

    goto/16 :goto_0

    :cond_39
    const/16 v14, 0x7c

    if-ne v9, v14, :cond_3a

    invoke-virtual {v0, v2, v8}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    move v7, v6

    const/4 v6, 0x1

    const/4 v8, 0x1

    goto/16 :goto_0

    :cond_3a
    if-eq v9, v13, :cond_3c

    if-eq v9, v12, :cond_3c

    if-eq v9, v11, :cond_3c

    if-ne v9, v10, :cond_3b

    goto :goto_e

    :cond_3b
    new-instance v1, Lmf/org/apache/xerces/impl/xpath/XPathException;

    const-string v2, "c-general-xpath"

    invoke-direct {v1, v2}, Lmf/org/apache/xerces/impl/xpath/XPathException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3c
    :goto_e
    const/4 v6, 0x1

    add-int/2addr v7, v6

    if-ne v7, v4, :cond_3d

    goto :goto_f

    :cond_3d
    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-eq v9, v13, :cond_3c

    if-eq v9, v12, :cond_3c

    if-eq v9, v11, :cond_3c

    if-eq v9, v10, :cond_3c

    :goto_f
    if-eq v7, v4, :cond_3f

    const/16 v6, 0x7c

    if-ne v9, v6, :cond_3e

    goto :goto_10

    :cond_3e
    new-instance v1, Lmf/org/apache/xerces/impl/xpath/XPathException;

    const-string v2, "c-general-xpath"

    invoke-direct {v1, v2}, Lmf/org/apache/xerces/impl/xpath/XPathException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3f
    :goto_10
    invoke-virtual {v0, v2, v8}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    const/4 v6, 0x1

    const/4 v8, 0x1

    goto/16 :goto_0

    :pswitch_c
    const/16 v6, 0x19

    invoke-virtual {v0, v2, v6}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_11

    :pswitch_d
    const/4 v6, 0x7

    invoke-virtual {v0, v2, v6}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_11

    :pswitch_e
    const/16 v6, 0x18

    invoke-virtual {v0, v2, v6}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    add-int/lit8 v7, v7, 0x1

    :goto_11
    move v8, v5

    :goto_12
    const/4 v6, 0x1

    goto/16 :goto_0

    :pswitch_f
    if-eqz v8, :cond_40

    const/16 v6, 0x14

    invoke-virtual {v0, v2, v6}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    move v8, v5

    goto :goto_13

    :cond_40
    invoke-virtual {v0, v2, v11}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    const/4 v8, 0x1

    :goto_13
    add-int/lit8 v7, v7, 0x1

    goto :goto_12

    :pswitch_10
    invoke-virtual {v0, v2, v6}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    add-int/lit8 v7, v7, 0x1

    :goto_14
    move v8, v6

    goto/16 :goto_0

    :pswitch_11
    invoke-virtual {v0, v2, v5}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    add-int/lit8 v7, v7, 0x1

    :goto_15
    move v8, v5

    goto/16 :goto_0

    :pswitch_12
    add-int/lit8 v7, v7, 0x1

    if-ne v7, v4, :cond_41

    return v5

    :cond_41
    invoke-virtual {v0, v3, v4, v7}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->scanNCName(Ljava/lang/String;II)I

    move-result v8

    if-ne v8, v7, :cond_42

    return v5

    :cond_42
    if-ge v8, v4, :cond_43

    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    move-result v16

    move/from16 v9, v16

    goto :goto_16

    :cond_43
    move/from16 v9, v16

    :goto_16
    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/16 v10, 0x3a

    if-eq v9, v10, :cond_44

    sget-object v9, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    move/from16 v18, v8

    move-object v8, v7

    move-object v7, v9

    move/from16 v9, v18

    goto :goto_17

    :cond_44
    add-int/lit8 v8, v8, 0x1

    if-ne v8, v4, :cond_45

    return v5

    :cond_45
    invoke-virtual {v0, v3, v4, v8}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->scanNCName(Ljava/lang/String;II)I

    move-result v9

    if-ne v9, v8, :cond_46

    return v5

    :cond_46
    if-ge v9, v4, :cond_47

    invoke-virtual {v3, v9}, Ljava/lang/String;->charAt(I)C

    :cond_47
    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :goto_17
    const/16 v10, 0x30

    invoke-virtual {v0, v2, v10}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    invoke-virtual {v2, v7}, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->addToken(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->addToken(Ljava/lang/String;)V

    move v8, v6

    move v7, v9

    goto/16 :goto_0

    :pswitch_13
    add-int/lit8 v8, v7, 0x1

    if-ne v8, v4, :cond_48

    return v5

    :cond_48
    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move v10, v8

    :goto_18
    if-ne v7, v9, :cond_49

    sub-int v7, v10, v8

    const/16 v11, 0x2e

    invoke-virtual {v0, v2, v11}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    add-int/2addr v7, v8

    invoke-virtual {v3, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->addToken(Ljava/lang/String;)V

    add-int/lit8 v7, v10, 0x1

    goto/16 :goto_14

    :cond_49
    const/16 v11, 0x2e

    add-int/lit8 v10, v10, 0x1

    if-ne v10, v4, :cond_4a

    return v5

    :cond_4a
    invoke-virtual {v3, v10}, Ljava/lang/String;->charAt(I)C

    move-result v7

    goto :goto_18

    :pswitch_14
    add-int/lit8 v7, v7, 0x1

    if-ne v7, v4, :cond_4b

    return v5

    :cond_4b
    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x3d

    if-eq v8, v9, :cond_4c

    return v5

    :cond_4c
    const/16 v8, 0x1b

    invoke-virtual {v0, v2, v8}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_15

    :cond_4d
    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v9

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method scanNCName(Ljava/lang/String;II)I
    .locals 5

    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x17

    const/16 v2, 0x14

    const/16 v3, 0x80

    if-lt v0, v3, :cond_0

    invoke-static {v0}, Lmf/org/apache/xerces/util/XMLChar;->isNameStart(I)Z

    move-result v0

    if-nez v0, :cond_1

    return p3

    :cond_0
    sget-object v4, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fASCIICharMap:[B

    aget-byte v0, v4, v0

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_1

    return p3

    :cond_1
    add-int/lit8 p3, p3, 0x1

    if-lt p3, p2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-lt v0, v3, :cond_3

    invoke-static {v0}, Lmf/org/apache/xerces/util/XMLChar;->isName(I)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_3
    sget-object v4, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fASCIICharMap:[B

    aget-byte v0, v4, v0

    if-eq v0, v2, :cond_1

    const/16 v4, 0xe

    if-eq v0, v4, :cond_1

    const/16 v4, 0xc

    if-eq v0, v4, :cond_1

    const/16 v4, 0xb

    if-eq v0, v4, :cond_1

    if-eq v0, v1, :cond_1

    :goto_0
    return p3
.end method
