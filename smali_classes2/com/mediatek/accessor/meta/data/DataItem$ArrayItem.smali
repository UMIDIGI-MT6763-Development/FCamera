.class public Lcom/mediatek/accessor/meta/data/DataItem$ArrayItem;
.super Ljava/lang/Object;
.source "DataItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/accessor/meta/data/DataItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ArrayItem"
.end annotation


# instance fields
.field public arrayName:Ljava/lang/String;

.field public dest:I

.field public index:I

.field public nameSpaceItem:Lcom/mediatek/accessor/meta/data/DataItem$NameSpaceItem;

.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
