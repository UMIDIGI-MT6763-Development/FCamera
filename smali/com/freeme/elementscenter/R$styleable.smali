.class public final Lcom/freeme/elementscenter/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/elementscenter/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final Banner:[I

.field public static final Banner_pageLayoutHeightGap:I = 0x0

.field public static final Banner_pageLayoutPaddingBottom:I = 0x1

.field public static final Banner_pageLayoutPaddingLeft:I = 0x2

.field public static final Banner_pageLayoutPaddingRight:I = 0x3

.field public static final Banner_pageLayoutPaddingTop:I = 0x4

.field public static final Banner_pageLayoutWidthGap:I = 0x5

.field public static final Banner_pageSpacing:I = 0x6

.field public static final Banner_pageSpacingInMiniMode:I = 0x7

.field public static final Banner_scrollIndicatorPaddingLeft:I = 0x8

.field public static final Banner_scrollIndicatorPaddingRight:I = 0x9


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/freeme/elementscenter/R$styleable;->Banner:[I

    return-void

    :array_0
    .array-data 4
        0x7f0400c4
        0x7f0400c5
        0x7f0400c6
        0x7f0400c7
        0x7f0400c8
        0x7f0400c9
        0x7f0400ca
        0x7f0400cb
        0x7f0400dd
        0x7f0400de
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
