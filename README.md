# 📈 SOAP Web Service - Stocks Market Data 

This project is a **SOAP-based web service** for retrieving **stocks market data**. The service allows clients to request information about one or more stock symbols and receive detailed responses including price, volume, and daily change metrics.


**WSDL Endpoint:** `https://soap-stocks.up.railway.app/soap/stocks.wsdl`

### Request Example

```xml
<GetStockRequest xmlns="https://soap-stocks.up.railway.app">
    <stockSymbol>ASELS</stockSymbol>
    <stockSymbol>THYAO</stockSymbol>
</GetStockRequest>
```
### Important Notice
⚠️ **This API is for demonstration purposes only**  
It is not intended for commercial or personal use. The project was developed to showcase coding abilities and architectural understanding.

