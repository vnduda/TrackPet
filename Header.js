import React, { Component } from 'react';
import { Text, StyleSheet } from 'react-native';

export default class Header extends Component {

    render() {
        return (
            <Text style={styles.title}>TrackPet</Text>
        );
    }
}

const styles = StyleSheet.create({
    title: {
        fontSize: 40,
        alignSelf: 'center',
    },
})