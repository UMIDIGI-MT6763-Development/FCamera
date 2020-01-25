.class Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$DaysInMonth;
.super Ljava/lang/Object;
.source "XMLGregorianCalendarImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DaysInMonth"
.end annotation


# static fields
.field private static final table:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xd

    new-array v0, v0, [I

    const/16 v1, 0x1f

    const/4 v2, 0x1

    aput v1, v0, v2

    const/4 v2, 0x2

    const/16 v3, 0x1c

    aput v3, v0, v2

    const/4 v2, 0x3

    aput v1, v0, v2

    const/16 v2, 0x1e

    const/4 v3, 0x4

    aput v2, v0, v3

    const/4 v3, 0x5

    aput v1, v0, v3

    const/4 v3, 0x6

    aput v2, v0, v3

    const/4 v3, 0x7

    aput v1, v0, v3

    const/16 v3, 0x8

    aput v1, v0, v3

    const/16 v3, 0x9

    aput v2, v0, v3

    const/16 v3, 0xa

    aput v1, v0, v3

    const/16 v3, 0xb

    aput v2, v0, v3

    const/16 v2, 0xc

    aput v1, v0, v2

    sput-object v0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$DaysInMonth;->table:[I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()[I
    .locals 1

    sget-object v0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$DaysInMonth;->table:[I

    return-object v0
.end method
