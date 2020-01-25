.class public Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;
.super Ljava/lang/Object;
.source "DataItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/accessor/meta/data/DataItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleItem"
.end annotation


# instance fields
.field public dest:I

.field public name:Ljava/lang/String;

.field public nameSpaceItem:Lcom/mediatek/accessor/meta/data/DataItem$NameSpaceItem;

.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
