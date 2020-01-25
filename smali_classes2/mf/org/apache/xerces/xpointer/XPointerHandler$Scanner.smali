.class Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;
.super Ljava/lang/Object;
.source "XPointerHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/xpointer/XPointerHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Scanner"
.end annotation


# static fields
.field private static final CHARTYPE_CARRET:B = 0x3t

.field private static final CHARTYPE_CLOSE_PAREN:B = 0x5t

.field private static final CHARTYPE_COLON:B = 0xat

.field private static final CHARTYPE_DIGIT:B = 0x9t

.field private static final CHARTYPE_EQUAL:B = 0xbt

.field private static final CHARTYPE_INVALID:B = 0x0t

.field private static final CHARTYPE_LETTER:B = 0xct

.field private static final CHARTYPE_MINUS:B = 0x6t

.field private static final CHARTYPE_NONASCII:B = 0xet

.field private static final CHARTYPE_OPEN_PAREN:B = 0x4t

.field private static final CHARTYPE_OTHER:B = 0x1t

.field private static final CHARTYPE_PERIOD:B = 0x7t

.field private static final CHARTYPE_SLASH:B = 0x8t

.field private static final CHARTYPE_UNDERSCORE:B = 0xdt

.field private static final CHARTYPE_WHITESPACE:B = 0x2t


# instance fields
.field private final fASCIICharMap:[B

.field private fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

.field final synthetic this$0:Lmf/org/apache/xerces/xpointer/XPointerHandler;


# direct methods
.method private constructor <init>(Lmf/org/apache/xerces/xpointer/XPointerHandler;Lmf/org/apache/xerces/util/SymbolTable;)V
    .locals 6

    iput-object p1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;->this$0:Lmf/org/apache/xerces/xpointer/XPointerHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x80

    new-array p1, p1, [B

    const/4 v0, 0x2

    const/16 v1, 0x9

    aput-byte v0, p1, v1

    const/16 v2, 0xa

    aput-byte v0, p1, v2

    const/16 v3, 0xd

    aput-byte v0, p1, v3

    const/16 v4, 0x20

    aput-byte v0, p1, v4

    const/4 v0, 0x1

    const/16 v4, 0x21

    aput-byte v0, p1, v4

    const/16 v4, 0x22

    aput-byte v0, p1, v4

    const/16 v4, 0x23

    aput-byte v0, p1, v4

    const/16 v4, 0x24

    aput-byte v0, p1, v4

    const/16 v4, 0x25

    aput-byte v0, p1, v4

    const/16 v4, 0x26

    aput-byte v0, p1, v4

    const/16 v4, 0x27

    aput-byte v0, p1, v4

    const/16 v4, 0x28

    const/4 v5, 0x4

    aput-byte v5, p1, v4

    const/16 v4, 0x29

    const/4 v5, 0x5

    aput-byte v5, p1, v4

    const/16 v4, 0x2a

    aput-byte v0, p1, v4

    const/16 v4, 0x2b

    aput-byte v0, p1, v4

    const/16 v4, 0x2c

    aput-byte v0, p1, v4

    const/16 v4, 0x2d

    const/4 v5, 0x6

    aput-byte v5, p1, v4

    const/16 v4, 0x2e

    const/4 v5, 0x7

    aput-byte v5, p1, v4

    const/16 v4, 0x2f

    const/16 v5, 0x8

    aput-byte v5, p1, v4

    const/16 v4, 0x30

    aput-byte v1, p1, v4

    const/16 v4, 0x31

    aput-byte v1, p1, v4

    const/16 v4, 0x32

    aput-byte v1, p1, v4

    const/16 v4, 0x33

    aput-byte v1, p1, v4

    const/16 v4, 0x34

    aput-byte v1, p1, v4

    const/16 v4, 0x35

    aput-byte v1, p1, v4

    const/16 v4, 0x36

    aput-byte v1, p1, v4

    const/16 v4, 0x37

    aput-byte v1, p1, v4

    const/16 v4, 0x38

    aput-byte v1, p1, v4

    const/16 v4, 0x39

    aput-byte v1, p1, v4

    const/16 v1, 0x3a

    aput-byte v2, p1, v1

    const/16 v1, 0x3b

    aput-byte v0, p1, v1

    const/16 v1, 0x3c

    aput-byte v0, p1, v1

    const/16 v1, 0x3d

    const/16 v2, 0xb

    aput-byte v2, p1, v1

    const/16 v1, 0x3e

    aput-byte v0, p1, v1

    const/16 v1, 0x3f

    aput-byte v0, p1, v1

    const/16 v1, 0x40

    aput-byte v0, p1, v1

    const/16 v1, 0xc

    const/16 v2, 0x41

    aput-byte v1, p1, v2

    const/16 v2, 0x42

    aput-byte v1, p1, v2

    const/16 v2, 0x43

    aput-byte v1, p1, v2

    const/16 v2, 0x44

    aput-byte v1, p1, v2

    const/16 v2, 0x45

    aput-byte v1, p1, v2

    const/16 v2, 0x46

    aput-byte v1, p1, v2

    const/16 v2, 0x47

    aput-byte v1, p1, v2

    const/16 v2, 0x48

    aput-byte v1, p1, v2

    const/16 v2, 0x49

    aput-byte v1, p1, v2

    const/16 v2, 0x4a

    aput-byte v1, p1, v2

    const/16 v2, 0x4b

    aput-byte v1, p1, v2

    const/16 v2, 0x4c

    aput-byte v1, p1, v2

    const/16 v2, 0x4d

    aput-byte v1, p1, v2

    const/16 v2, 0x4e

    aput-byte v1, p1, v2

    const/16 v2, 0x4f

    aput-byte v1, p1, v2

    const/16 v2, 0x50

    aput-byte v1, p1, v2

    const/16 v2, 0x51

    aput-byte v1, p1, v2

    const/16 v2, 0x52

    aput-byte v1, p1, v2

    const/16 v2, 0x53

    aput-byte v1, p1, v2

    const/16 v2, 0x54

    aput-byte v1, p1, v2

    const/16 v2, 0x55

    aput-byte v1, p1, v2

    const/16 v2, 0x56

    aput-byte v1, p1, v2

    const/16 v2, 0x57

    aput-byte v1, p1, v2

    const/16 v2, 0x58

    aput-byte v1, p1, v2

    const/16 v2, 0x59

    aput-byte v1, p1, v2

    const/16 v2, 0x5a

    aput-byte v1, p1, v2

    const/16 v2, 0x5b

    aput-byte v0, p1, v2

    const/16 v2, 0x5c

    aput-byte v0, p1, v2

    const/16 v2, 0x5d

    aput-byte v0, p1, v2

    const/16 v2, 0x5e

    const/4 v4, 0x3

    aput-byte v4, p1, v2

    const/16 v2, 0x5f

    aput-byte v3, p1, v2

    const/16 v2, 0x60

    aput-byte v0, p1, v2

    const/16 v2, 0x61

    aput-byte v1, p1, v2

    const/16 v2, 0x62

    aput-byte v1, p1, v2

    const/16 v2, 0x63

    aput-byte v1, p1, v2

    const/16 v2, 0x64

    aput-byte v1, p1, v2

    const/16 v2, 0x65

    aput-byte v1, p1, v2

    const/16 v2, 0x66

    aput-byte v1, p1, v2

    const/16 v2, 0x67

    aput-byte v1, p1, v2

    const/16 v2, 0x68

    aput-byte v1, p1, v2

    const/16 v2, 0x69

    aput-byte v1, p1, v2

    const/16 v2, 0x6a

    aput-byte v1, p1, v2

    const/16 v2, 0x6b

    aput-byte v1, p1, v2

    const/16 v2, 0x6c

    aput-byte v1, p1, v2

    const/16 v2, 0x6d

    aput-byte v1, p1, v2

    const/16 v2, 0x6e

    aput-byte v1, p1, v2

    const/16 v2, 0x6f

    aput-byte v1, p1, v2

    const/16 v2, 0x70

    aput-byte v1, p1, v2

    const/16 v2, 0x71

    aput-byte v1, p1, v2

    const/16 v2, 0x72

    aput-byte v1, p1, v2

    const/16 v2, 0x73

    aput-byte v1, p1, v2

    const/16 v2, 0x74

    aput-byte v1, p1, v2

    const/16 v2, 0x75

    aput-byte v1, p1, v2

    const/16 v2, 0x76

    aput-byte v1, p1, v2

    const/16 v2, 0x77

    aput-byte v1, p1, v2

    const/16 v2, 0x78

    aput-byte v1, p1, v2

    const/16 v2, 0x79

    aput-byte v1, p1, v2

    const/16 v2, 0x7a

    aput-byte v1, p1, v2

    const/16 v1, 0x7b

    aput-byte v0, p1, v1

    const/16 v1, 0x7c

    aput-byte v0, p1, v1

    const/16 v1, 0x7d

    aput-byte v0, p1, v1

    const/16 v1, 0x7e

    aput-byte v0, p1, v1

    const/16 v1, 0x7f

    aput-byte v0, p1, v1

    iput-object p1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;->fASCIICharMap:[B

    iput-object p2, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    return-void
.end method

.method synthetic constructor <init>(Lmf/org/apache/xerces/xpointer/XPointerHandler;Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;-><init>(Lmf/org/apache/xerces/xpointer/XPointerHandler;Lmf/org/apache/xerces/util/SymbolTable;)V

    return-void
.end method

.method static synthetic access$1(Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;Ljava/lang/String;II)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-direct/range {p0 .. p5}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;->scanExpr(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method private scanData(Ljava/lang/String;Ljava/lang/StringBuffer;II)I
    .locals 7

    :goto_0
    if-ne p4, p3, :cond_0

    goto :goto_4

    :cond_0
    invoke-virtual {p1, p4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0xe

    const/16 v2, 0x80

    if-lt v0, v2, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;->fASCIICharMap:[B

    aget-byte v3, v3, v0

    :goto_1
    const/4 v4, 0x4

    const/4 v5, 0x5

    if-ne v3, v4, :cond_5

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    add-int/lit8 p4, p4, 0x1

    invoke-direct {p0, p1, p2, p3, p4}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;->scanData(Ljava/lang/String;Ljava/lang/StringBuffer;II)I

    move-result p4

    if-ne p4, p3, :cond_2

    return p4

    :cond_2
    invoke-virtual {p1, p4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-lt v0, v2, :cond_3

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;->fASCIICharMap:[B

    aget-byte v1, v1, v0

    :goto_2
    if-eq v1, v5, :cond_4

    return p3

    :cond_4
    int-to-char v0, v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_5
    if-ne v3, v5, :cond_6

    return p4

    :cond_6
    const/4 v6, 0x3

    if-ne v3, v6, :cond_9

    add-int/lit8 p4, p4, 0x1

    invoke-virtual {p1, p4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-lt v0, v2, :cond_7

    goto :goto_3

    :cond_7
    iget-object v1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;->fASCIICharMap:[B

    aget-byte v1, v1, v0

    :goto_3
    if-eq v1, v6, :cond_8

    if-eq v1, v4, :cond_8

    if-eq v1, v5, :cond_8

    :goto_4
    return p4

    :cond_8
    int-to-char v0, v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_9
    int-to-char v0, v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 p4, p4, 0x1

    goto :goto_0
.end method

.method private scanExpr(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;Ljava/lang/String;II)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v1

    move-object v4, v2

    move v2, v3

    :goto_0
    const/4 v5, 0x1

    if-ne p4, p5, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {p3, p4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    :goto_1
    const/16 v7, 0x20

    if-eq v6, v7, :cond_1

    const/16 v7, 0xa

    if-eq v6, v7, :cond_1

    const/16 v7, 0x9

    if-eq v6, v7, :cond_1

    const/16 v7, 0xd

    if-eq v6, v7, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 p4, p4, 0x1

    if-ne p4, p5, :cond_10

    :goto_2
    if-ne p4, p5, :cond_2

    :goto_3
    return v5

    :cond_2
    const/16 v7, 0x80

    if-lt v6, v7, :cond_3

    const/16 v6, 0xe

    goto :goto_4

    :cond_3
    iget-object v7, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;->fASCIICharMap:[B

    aget-byte v6, v7, v6

    :goto_4
    packed-switch v6, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, p2, v5}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;->addToken(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;I)V

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, p2, v1}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;->addToken(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;I)V

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :pswitch_2
    if-nez v2, :cond_c

    invoke-direct {p0, p3, p5, p4}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;->scanNCName(Ljava/lang/String;II)I

    move-result v3

    if-ne v3, p4, :cond_4

    iget-object p1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;->this$0:Lmf/org/apache/xerces/xpointer/XPointerHandler;

    const-string p2, "InvalidShortHandPointer"

    new-array p4, v5, [Ljava/lang/Object;

    aput-object p3, p4, v1

    invoke-static {p1, p2, p4}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->access$0(Lmf/org/apache/xerces/xpointer/XPointerHandler;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_4
    if-ge v3, p5, :cond_5

    invoke-virtual {p3, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    goto :goto_5

    :cond_5
    const/4 v4, -0x1

    :goto_5
    invoke-virtual {p3, p4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    sget-object v5, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    const/16 v6, 0x3a

    if-ne v4, v6, :cond_9

    add-int/lit8 v3, v3, 0x1

    if-ne v3, p5, :cond_6

    return v1

    :cond_6
    invoke-virtual {p3, v3}, Ljava/lang/String;->charAt(I)C

    invoke-direct {p0, p3, p5, v3}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;->scanNCName(Ljava/lang/String;II)I

    move-result v4

    if-ne v4, v3, :cond_7

    return v1

    :cond_7
    if-ge v4, p5, :cond_8

    invoke-virtual {p3, v4}, Ljava/lang/String;->charAt(I)C

    :cond_8
    invoke-virtual {p3, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v5, p4

    move p4, v4

    move-object v4, v3

    goto :goto_6

    :cond_9
    move-object v4, p4

    move p4, v3

    :goto_6
    if-eq p4, p5, :cond_a

    const/4 v3, 0x3

    invoke-virtual {p0, p2, v3}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;->addToken(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;I)V

    invoke-static {p2, v5}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->access$0(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;Ljava/lang/String;)V

    invoke-static {p2, v4}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->access$0(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;Ljava/lang/String;)V

    goto :goto_7

    :cond_a
    if-ne p4, p5, :cond_b

    const/4 v3, 0x2

    invoke-virtual {p0, p2, v3}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;->addToken(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;I)V

    invoke-static {p2, v4}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->access$0(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;Ljava/lang/String;)V

    :cond_b
    :goto_7
    move v3, v1

    goto/16 :goto_0

    :cond_c
    if-lez v2, :cond_f

    if-nez v3, :cond_f

    if-eqz v4, :cond_f

    invoke-direct {p0, p3, v0, p5, p4}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;->scanData(Ljava/lang/String;Ljava/lang/StringBuffer;II)I

    move-result v2

    if-ne v2, p4, :cond_d

    iget-object p1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;->this$0:Lmf/org/apache/xerces/xpointer/XPointerHandler;

    const-string p2, "InvalidSchemeDataInXPointer"

    new-array p4, v5, [Ljava/lang/Object;

    aput-object p3, p4, v1

    invoke-static {p1, p2, p4}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->access$0(Lmf/org/apache/xerces/xpointer/XPointerHandler;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_d
    if-ge v2, p5, :cond_e

    invoke-virtual {p3, v2}, Ljava/lang/String;->charAt(I)C

    :cond_e
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const/4 v5, 0x4

    invoke-virtual {p0, p2, v5}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;->addToken(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;I)V

    invoke-static {p2, p4}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->access$0(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p4

    invoke-virtual {v0, v1, p4}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    move p4, v2

    move v2, v1

    goto/16 :goto_0

    :cond_f
    return v1

    :cond_10
    invoke-virtual {p3, p4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private scanNCName(Ljava/lang/String;II)I
    .locals 5

    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0xd

    const/16 v2, 0xc

    const/16 v3, 0x80

    if-lt v0, v3, :cond_0

    invoke-static {v0}, Lmf/org/apache/xerces/util/XMLChar;->isNameStart(I)Z

    move-result v0

    if-nez v0, :cond_1

    return p3

    :cond_0
    iget-object v4, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;->fASCIICharMap:[B

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
    iget-object v4, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;->fASCIICharMap:[B

    aget-byte v0, v4, v0

    if-eq v0, v2, :cond_1

    const/16 v4, 0x9

    if-eq v0, v4, :cond_1

    const/4 v4, 0x7

    if-eq v0, v4, :cond_1

    const/4 v4, 0x6

    if-eq v0, v4, :cond_1

    if-eq v0, v1, :cond_1

    :goto_0
    return p3
.end method


# virtual methods
.method protected addToken(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-static {p1, p2}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->access$1(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;I)V

    return-void
.end method
