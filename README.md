Penulis: [Naufal](https://x.com/0xfal)

> [!NOTE]
> **WHAT IS Hemi Network?**\
> .

# Tutorial Hemi Network PoP Mining

## 1. Needs

Kamu bisa gunakan VPS atau PC pribadi dengan kebutuhan:

| ✅ Linux | ✅ macOS | ✅ Windows (Native / WSL) |
| ------------- | ------------- | ------------- |

| Part | Minimum | Recommended |
| ------------- | ------------- | ------------- |
| CPU | - | - |
| RAM | - | - |
| SSD | - | - |

Tutorial ini dibuat menggunakan Linux (Ubuntu), untuk sistem operasi lainnya mungkin akan sedikit berbeda.

## 2. Executions

### 2.1 Download Repository

```
wget https://github.com/hemilabs/heminetwork/releases/download/v0.4.3/heminetwork_v0.4.3_linux_amd64.tar.gz
tar xvf heminetwork_v0.4.3_linux_amd64.tar.gz
cd heminetwork_v0.4.3_linux_amd64
```

### 2.2 Generate `public key`

```
./keygen -secp256k1 -json -net="testnet" > ~/popm-address.json
cat ~/popm-address.json
```

Simpan output dari menjalankan perintah di atas, dan klaim `0.002 tBTC` di [Hemi Discord faucet](https://discord.gg/hemixyz) menggunakan `pubkey_hash`.

### 2.3 Run the Miner

Ubah `<private_key>` sesuai dengan yang sudah kamu generate sebelumnya, dan untuk `<fee_per_vB_integer>` kurekomendasikan `200` ke atas (bisa cek [mempool](https://mempool.space/testnet) untuk nilai yang lebih pasti).

```
export POPM_BTC_PRIVKEY=<private_key>
export POPM_STATIC_FEE=<fee_per_vB_integer>
export POPM_BFG_URL=wss://testnet.rpc.hemi.network/v1/ws/public
./popmd
```

---

Reach us if you have more questions:\
ZuperHunt's [Discord server](https://discord.gg/ZuperHunt) | [X(Twitter)](https://twitter.com/ZuperHunt)

# Acknowledgements

* [PoP Mining](https://docs.hemi.xyz/how-to-tutorials/tutorials/setup-part-1)
