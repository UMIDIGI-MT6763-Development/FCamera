.class public Lcom/mediatek/accessor/data/Section;
.super Ljava/lang/Object;
.source "Section.java"


# instance fields
.field public buffer:[B

.field public length:I

.field public marker:I

.field public offset:J

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>(IJI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/accessor/data/Section;->type:Ljava/lang/String;

    iput p1, p0, Lcom/mediatek/accessor/data/Section;->marker:I

    iput-wide p2, p0, Lcom/mediatek/accessor/data/Section;->offset:J

    iput p4, p0, Lcom/mediatek/accessor/data/Section;->length:I

    return-void
.end method
